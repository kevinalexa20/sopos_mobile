import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';
import 'package:sopos_mobile/shared/services/auth_service.dart';
import 'package:sopos_mobile/shared/services/local_storage_service.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());
final localStorageServiceProvider =
    Provider<LocalStorageService>((ref) => LocalStorageService());

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    ref.read(authServiceProvider),
    ref.read(localStorageServiceProvider),
  );
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _authService;
  final LocalStorageService _localStorageService;

  AuthNotifier(this._authService, this._localStorageService)
      : super(AuthState.unauthenticated()) {
    _init();
  }

  Future<void> _init() async {
    final authData = await _localStorageService.getAuthData();
    if (authData != null) {
      state = AuthState.authenticated(authData);
    }
  }

  Future<void> login(String email, String password) async {
    state = AuthState.loading();
    try {
      final response = await _authService.login(email, password);
      await _localStorageService.saveAuthData(response.data);
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
      await _localStorageService.saveAuthData(response.data);
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
        print('Error during logout: $e');
      }
    }
    await _localStorageService.clearAuthData();
    state = AuthState.unauthenticated();
  }
}
