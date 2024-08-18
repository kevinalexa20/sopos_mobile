// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sopos_mobile/routes/app_router.dart';
import 'package:sopos_mobile/shared/shared.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Menggunakan MediaQuery untuk mendapatkan brightness perangkat
    final brightness = MediaQuery.of(context).platformBrightness;

    // Memastikan tema diatur sesuai dengan brightness perangkat
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(themeNotifierProvider.notifier)
          .setThemeFromBrightness(brightness);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Mendapatkan nilai themeMode dari provider
    final themeMode = ref.watch(themeNotifierProvider);

    // Mendapatkan color schemes untuk light dan dark mode
    final lightColorScheme = MyMaterialTheme.lightScheme();
    final darkColorScheme = MyMaterialTheme.darkScheme();

    // Mendapatkan textTheme dari font yang sudah didefinisikan
    final textTheme = createTextTheme(context, 'Plus Jakarta Sans', 'Montaga');

    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        builder: (_, context) {
          return MaterialApp.router(
            title: 'SOPOS Mobile',
            theme: ThemeData(
              colorScheme: lightColorScheme, // LightMode
              textTheme: textTheme.apply(
                bodyColor: lightColorScheme.onSurface,
                displayColor: lightColorScheme.onSurface,
              ),
              useMaterial3: true,
            ),
            darkTheme: ThemeData(
              colorScheme: darkColorScheme, // DarkMode
              textTheme: textTheme.apply(
                bodyColor: darkColorScheme.onSurface,
                displayColor: darkColorScheme.onSurface,
              ),
              useMaterial3: true,
            ),
            themeMode: themeMode, // Gunakan tema dari provider
            routerConfig: myRoute,
            debugShowCheckedModeBanner: false,
          );
        });
  }
}
