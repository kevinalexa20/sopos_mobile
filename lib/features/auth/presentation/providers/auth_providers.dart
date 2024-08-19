import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_notifier.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';
import 'package:sopos_mobile/shared/services/auth_service.dart';
import 'package:sopos_mobile/shared/services/local_storage_service.dart';

final localStorageServiceProvider = Provider<LocalStorageService>((ref) {
  return LocalStorageService();
});

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(
    ref.read(authServiceProvider),
    ref.read(localStorageServiceProvider),
  );
});
