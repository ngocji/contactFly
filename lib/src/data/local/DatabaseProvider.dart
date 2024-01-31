import 'package:path/path.dart';
import 'package:showslinger/src/data/local/entity/contact_entity.dart';
import 'package:sqflite/sqflite.dart';

class Tables {
  static const CONTACT_TABLE = "contact";
  static const CONTACT_COLUMN_NAME = "name";
  static const CONTACT_COLUMN_EMAIL = "email";
  static const CONTACT_COLUMN_CITY = "city";
  static const CONTACT_COLUMN_MAC = "mac";
  static const CONTACT_COLUMN_TIMESTAMP = "timestamp";
  static const CONTACT_COLUMN_CREDIT_CARD = "creditcard";
}

class DatabaseProvider {
  static const _databaseName = "Contact.db";
  static const _databaseVersion = 1;

  final Database database;

  DatabaseProvider({required this.database});

  static Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  static Future _onCreate(Database db, int version) async {
    await db.execute(
        "create table ${Tables.CONTACT_TABLE} (${Tables.CONTACT_COLUMN_MAC} text not null primary key, "
        "${Tables.CONTACT_COLUMN_NAME} text,"
        "${Tables.CONTACT_COLUMN_EMAIL} text,"
        "${Tables.CONTACT_COLUMN_CITY} text,"
        "${Tables.CONTACT_COLUMN_TIMESTAMP} text,"
        "${Tables.CONTACT_COLUMN_CREDIT_CARD} text)");
  }

  Future<void> insert(ContactEntity entity) async {
    await database
        .insert(Tables.CONTACT_TABLE, entity.toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace)
        .safe();
  }

  Future<void> inserts(List<ContactEntity> entities) async {
    Batch batch = database.batch();
    for (var e in entities) {
      batch.insert(Tables.CONTACT_TABLE, e.toJson(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    }
    await batch.commit(noResult: true);
  }

  Future<ContactEntity> update(ContactEntity entity) async {
    await database
        .update(Tables.CONTACT_TABLE, entity.toJson(),
            conflictAlgorithm: ConflictAlgorithm.replace)
        .safe();
    return entity;
  }

  Future<List<ContactEntity>> getContacts(int limit, int page) async {
    final List<Map<String, dynamic>> maps = await database.query(
        Tables.CONTACT_TABLE,
        orderBy: Tables.CONTACT_COLUMN_NAME,
        limit: limit,
        offset: (page * limit));

    return List.generate(maps.length, (i) {
      return ContactEntity.fromJson(maps[i]);
    });
  }

  Future<bool> delete(String mac) async {
    final deleted = await database
        .delete(Tables.CONTACT_TABLE, where: "mac = ?", whereArgs: [mac]);
    return deleted > 0;
  }
}

extension FutureExt on Future {
  Future<dynamic> safe([Function? error]) {
    return catchError(() {
      if (error != null) {
        error();
      }
    });
  }
}
