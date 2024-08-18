import 'package:dio/dio.dart';
import 'package:sopos_mobile/shared/domain/models/auth_response.dart';
import 'dio_client.dart';

class AuthService {
  final Dio _dio = DioClient.instance;

  Future<AuthResponse> login(String email, String password) async {
    try {
      final response = await _dio.post('/auth/login', data: {
        'email': email,
        'password': password,
      });
      return AuthResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception('Failed to login: ${e.message}');
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
    } on DioError catch (e) {
      throw Exception('Failed to register: ${e.message}');
    }
  }

  Future<void> logout(String token) async {
    try {
      await _dio.delete('/auth/logout',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
    } on DioError catch (e) {
      throw Exception('Failed to logout: ${e.message}');
    }
  }
}
