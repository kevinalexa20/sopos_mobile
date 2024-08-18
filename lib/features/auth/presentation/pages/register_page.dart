import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/auth_providers.dart';
import 'package:sopos_mobile/features/auth/presentation/providers/states/auth_state.dart';

class RegisterPage extends ConsumerWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                ref.read(authStateProvider.notifier).register(
                      _emailController.text,
                      _passwordController.text,
                      _firstNameController.text,
                      _lastNameController.text,
                    );
                context.go('/dashboard');
              },
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
