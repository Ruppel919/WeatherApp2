import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DioModule {
  @injectable
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: 'https://api.open-meteo.com',
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
    ),
  );
}
