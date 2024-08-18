import 'package:dio/dio.dart';

class DioClient {
  static Dio? _instance;

  static Dio get instance {
    if (_instance == null) {
      _instance = Dio(BaseOptions(
        baseUrl: 'http://localhost:3007/api',
        connectTimeout: Duration(seconds: 5),
        receiveTimeout: Duration(seconds: 3),
      ));
      _instance!.interceptors.add(LogInterceptor(responseBody: true));
    }
    return _instance!;
  }
}