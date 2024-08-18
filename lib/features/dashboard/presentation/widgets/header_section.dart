import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/auth_providers.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';

class HeaderSection extends ConsumerWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          authState is AuthenticatedState
              ? 'Hi ${authState.authData.employee.firstName}'
              : 'Hi Kamu!',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
        ),
        SizedBox(height: 10.h),
        Text(
          authState is AuthenticatedState
              ? 'Selamat datang di aplikasi!'
              : 'Sebelum mulai akses aplikasi, login dulu yuk!',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(height: 5.h),
        FilledButton(
          onPressed: () {
            if (authState is AuthenticatedState) {
              // Logout
              ref.read(authStateProvider.notifier).logout();
            } else {
              // Login
              context.go('/login');
            }
          },
          child: Text(authState is AuthenticatedState ? 'Logout' : 'Login'),
        ),
      ],
    );
  }
}
