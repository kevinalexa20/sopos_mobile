import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';
import 'package:sopos_mobile/shared/services/auth_service.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;

  AuthNotifier(this._authService) : super(AuthState.unauthenticated());

  Future<void> login(String email, String password) async {
    state = AuthState.loading();
    try {
      final response = await _authService.login(email, password);
      state = AuthState.authenticated(response.data);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> register(
      String email, String password, String firstName, String lastName) async {
    state = AuthState.loading();
    try {
      final response =
          await _authService.register(email, password, firstName, lastName);
      state = AuthState.authenticated(response.data);
    } catch (e) {
      state = AuthState.error(e.toString());
    }
  }

  Future<void> logout() async {
    if (state is AuthenticatedState) {
      final token = (state as AuthenticatedState).authData.token;
      try {
        await _authService.logout(token);
      } catch (e) {
        print('Error during logut: $e');
      }
    }
    state = AuthState.unauthenticated();
  }
}
