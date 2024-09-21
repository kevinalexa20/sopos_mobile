import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/auth_providers.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';
import 'package:sopos_mobile/shared/shared.dart';

class LoginPage extends ConsumerWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: MyAppbar(
        leading: BackButton(
          onPressed: () => context.go('/dashboard'),
        ),
        themeMode: themeMode,
        themeNotifier: themeNotifier,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            HeightSpacer(height: 16.h),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            HeightSpacer(height: 24.h),
            ElevatedButton(
              onPressed: () {
                ref.read(authStateProvider.notifier).login(
                      _emailController.text,
                      _passwordController.text,
                    );
                context.go('/dashboard');
              },
              child: Text('Login'),
            ),
            HeightSpacer(height: 20.h),
            Text('Belum punya akun?'),
            TextButton(
              onPressed: () => context.go('/register'),
              child: Text('Register'),
            ),
            if (authState is LoadingState) CircularProgressIndicator(),
            if (authState is ErrorState)
              Text(authState.message, style: TextStyle(color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
