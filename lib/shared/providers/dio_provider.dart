import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/services/local_storage_service.dart';

final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:3007/api',
    connectTimeout: Duration(seconds: 15),
    receiveTimeout: Duration(seconds: 10),
  ));

  final localStorageService = ref.read(localStorageServiceProvider);

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
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
