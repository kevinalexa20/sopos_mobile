import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/shared/providers/theme_provider.dart';
import 'package:sopos_mobile/shared/widgets/my_appbar.dart';
import 'package:sopos_mobile/shared/widgets/my_navbar.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Mengambil themeNotifier dari provider
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
      bottomNavigationBar: MyNavBar(selectedIndex: 0),
    );
  }
}
