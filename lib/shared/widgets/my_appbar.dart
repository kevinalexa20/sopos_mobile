import 'package:flutter/material.dart';
import 'package:sopos_mobile/shared/providers/theme_provider.dart';

class MyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppbar({
    super.key,
    required this.themeMode,
    required this.themeNotifier,
  });

  final ThemeMode themeMode;
  final ThemeNotifier themeNotifier;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.dashboard),
      title: const Text('SoPOS'),
      actions: [
        IconButton(
          icon: Icon(
            themeMode == ThemeMode.light ? Icons.light_mode : Icons.dark_mode,
          ),
          onPressed: () {
            // Panggil fungsi toggleTheme dari themeNotifier
            themeNotifier.toggleTheme();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
