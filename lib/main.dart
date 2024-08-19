import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/main/my_app.dart';

import 'features/auth/presentation/providers/auth_providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final container = ProviderContainer();
  //initialize authstate
  // await container.read(authStateProvider.notifier)._init();
  runApp(UncontrolledProviderScope(
    container: container,
    child: MyApp(),
  ));
}
