import 'package:sopos_mobile/shared/domain/models/auth_response.dart';

abstract class AuthState {
  const AuthState();

  factory AuthState.unauthenticated() = UnauthenticatedState;
  factory AuthState.authenticated(AuthData authData) = AuthenticatedState;
  factory AuthState.loading() = LoadingState;
  factory AuthState.error(String message) = ErrorState;
}

class UnauthenticatedState extends AuthState {}

class AuthenticatedState extends AuthState {
  final AuthData authData;
  AuthenticatedState(this.authData);
}

class LoadingState extends AuthState {}

class ErrorState extends AuthState {
  final String message;
  ErrorState(this.message);
}