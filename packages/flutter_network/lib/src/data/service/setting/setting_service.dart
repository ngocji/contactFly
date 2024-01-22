import 'package:dio/dio.dart';
import 'package:flutter_core/flutter_core.dart';


part 'setting_service.g.dart';

@RestApi()
abstract class SettingService {
  factory SettingService(Dio dio, {String baseUrl}) = _SettingService;
  
}
