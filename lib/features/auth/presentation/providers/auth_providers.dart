import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_notifier.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';
import 'package:sopos_mobile/shared/domain/models/auth_response.dart';
import 'package:sopos_mobile/shared/services/auth_service.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final authStateProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.read(authServiceProvider));
});




