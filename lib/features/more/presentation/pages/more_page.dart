import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/shared.dart';

class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ngambil themeNotifier dari provider
    final themeNotifier = ref.read(themeNotifierProvider.notifier);
    final themeMode = ref.watch(themeNotifierProvider);

    return Scaffold(
      appBar: MyAppbar(
        themeMode: themeMode,
        themeNotifier: themeNotifier,
      ),
      body: const Center(
        child: Text('Dashboard'),
      ),
      bottomNavigationBar: MyNavBar(selectedIndex: 4),
    );
  }
}
