import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/services/local_storage_service.dart';

final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:3007/api',
    connectTimeout: Duration(seconds: 60),
    receiveTimeout: Duration(seconds: 60),
  ));

  final localStorageService = ref.read(localStorageServiceProvider);

  //addin interceptor to add token to every request
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        //get token from local storage
        final authData = await localStorageService.getAuthData();
        if (authData != null && authData.token != null) {
          print('Token found: ${authData.token}');
          options.headers['Authorization'] = 'Bearer ${authData.token}';
        } else {
          print('Token not found');
        }
        return handler.next(options);
      },
    ),
  );

  return dio;
});
