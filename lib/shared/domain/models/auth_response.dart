import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    required bool success,
    required String message,
    required AuthData data,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class AuthData with _$AuthData {
  factory AuthData({
    required String token,
    String? refreshToken,
    required Employee employee,
  }) = _AuthData;

  factory AuthData.fromJson(Map<String, dynamic> json) =>
      _$AuthDataFromJson(json);
}

@freezed
class Employee with _$Employee {
  factory Employee({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String role,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}