import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ThemeNotifier yang akan mengelola tema aplikasi
class ThemeNotifier extends StateNotifier<ThemeMode> {
  ThemeNotifier() : super(ThemeMode.system);

  // Set tema berdasarkan brightness dari MediaQuery
  void setThemeFromBrightness(Brightness brightness) {
    if (brightness == Brightness.dark) {
      state = ThemeMode.dark;
    } else {
      state = ThemeMode.light;
    }
  }

  // Toggle tema antara light mode dan dark mode
  void toggleTheme() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}

// Provider untuk themeNotifier
final themeNotifierProvider =
    StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier();
});
