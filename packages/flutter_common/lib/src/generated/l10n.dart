// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Localization {
  Localization();

  static Localization? _current;

  static Localization get current {
    assert(_current != null,
        'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localization();
      Localization._current = instance;

      return instance;
    });
  }

  static Localization of(BuildContext context) {
    final instance = Localization.maybeOf(context);
    assert(instance != null,
        'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localization? maybeOf(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  /// `ShowSlinger`
  String get app_name {
    return Intl.message(
      'ShowSlinger',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `Username`
  String get lbl_user_name {
    return Intl.message(
      'Username',
      name: 'lbl_user_name',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get lbl_password {
    return Intl.message(
      'Password',
      name: 'lbl_password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get lbl_forgot_password {
    return Intl.message(
      'Forgot Password',
      name: 'lbl_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get lbl_signin {
    return Intl.message(
      'Login',
      name: 'lbl_signin',
      desc: '',
      args: [],
    );
  }

  /// `By signing in you agree to our\n`
  String get lbl_agree {
    return Intl.message(
      'By signing in you agree to our\n',
      name: 'lbl_agree',
      desc: '',
      args: [],
    );
  }

  /// `terms & conditions`
  String get lbl_term {
    return Intl.message(
      'terms & conditions',
      name: 'lbl_term',
      desc: '',
      args: [],
    );
  }

  /// ` & `
  String get lbl_and {
    return Intl.message(
      ' & ',
      name: 'lbl_and',
      desc: '',
      args: [],
    );
  }

  /// `privacy policy`
  String get lbl_privacy {
    return Intl.message(
      'privacy policy',
      name: 'lbl_privacy',
      desc: '',
      args: [],
    );
  }

  /// `Offline Scanning Enabled`
  String get lbl_offline_enable {
    return Intl.message(
      'Offline Scanning Enabled',
      name: 'lbl_offline_enable',
      desc: '',
      args: [],
    );
  }

  /// `Success!`
  String get lbl_success {
    return Intl.message(
      'Success!',
      name: 'lbl_success',
      desc: '',
      args: [],
    );
  }

  /// `Scan ({number})`
  String lbl_scan(Object number) {
    return Intl.message(
      'Scan ($number)',
      name: 'lbl_scan',
      desc: '',
      args: [number],
    );
  }

  /// `Scanned`
  String get lbl_scanned {
    return Intl.message(
      'Scanned',
      name: 'lbl_scanned',
      desc: '',
      args: [],
    );
  }

  /// `Not valid now`
  String get lbl_not_valid {
    return Intl.message(
      'Not valid now',
      name: 'lbl_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Invalid`
  String get lbl_invalid {
    return Intl.message(
      'Invalid',
      name: 'lbl_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get lbl_okay {
    return Intl.message(
      'Okay',
      name: 'lbl_okay',
      desc: '',
      args: [],
    );
  }

  /// `Ticket only valid for:`
  String get lbl_only_valid {
    return Intl.message(
      'Ticket only valid for:',
      name: 'lbl_only_valid',
      desc: '',
      args: [],
    );
  }

  /// `Unfortunately, this code cannot be \nread by the scanner`
  String get lbl_invalid_detail {
    return Intl.message(
      'Unfortunately, this code cannot be \nread by the scanner',
      name: 'lbl_invalid_detail',
      desc: '',
      args: [],
    );
  }

  /// `This code has already been scanned`
  String get lbl_code_scanned {
    return Intl.message(
      'This code has already been scanned',
      name: 'lbl_code_scanned',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
