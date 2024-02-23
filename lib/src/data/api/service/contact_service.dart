
import 'package:dio/dio.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:showslinger/src/data/api/dto/contact_dto.dart';
part 'contact_service.g.dart';

@RestApi()
abstract class ContactService {
  factory ContactService(Dio dio, {String baseUrl}) = _ContactService;

  @POST('/resource/people.json')
  Future<List<ContactDto>> getContacts();
}