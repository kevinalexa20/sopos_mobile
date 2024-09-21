import 'package:dio/dio.dart';
import 'package:sopos_mobile/shared/domain/models/auth_response.dart';
import 'dio_client.dart';

//Main Logic for handling authentication
class AuthService {
  //using dio client instance to make requests
  final Dio _dio = DioClient.instance;

  Future<AuthResponse> login(String email, String password) async {
    try {
      final response = await _dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      return AuthResponse.fromJson(response.data);
    } on DioException catch (e, stackTrace) {
      Error.throwWithStackTrace('Failed to login: ${e.message}', stackTrace);
    }
  }

  Future<AuthResponse> register(
      String email, String password, String firstName, String lastName) async {
    try {
      final response = await _dio.post('/auth/register', data: {
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
      });
      return AuthResponse.fromJson(response.data);
    } on DioException catch (e, stackTrace) {
      Error.throwWithStackTrace('Failed to register: ${e.message}', stackTrace);
    }
  }

  Future<void> logout(String token) async {
    try {
      await _dio.post('/auth/logout',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } on DioException catch (e, stackTrace) {
      Error.throwWithStackTrace('Failed to logout: ${e.message}', stackTrace);
    }
  }

}
