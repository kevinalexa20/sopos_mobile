import "package:flutter/material.dart";

class MyMaterialTheme {
  final TextTheme textTheme;

  const MyMaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4286927640),
      surfaceTint: Color(4286927640),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958270),
      onPrimaryContainer: Color(4281079296),
      secondary: Color(4285749826),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958270),
      onSecondaryContainer: Color(4280883206),
      tertiary: Color(4283982650),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292667572),
      onTertiaryContainer: Color(4279639553),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965493),
      onSurface: Color(4280359444),
      onSurfaceVariant: Color(4283516218),
      outline: Color(4286805096),
      outlineVariant: Color(4292199349),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806632),
      inversePrimary: Color(4294818165),
      primaryFixed: Color(4294958270),
      onPrimaryFixed: Color(4281079296),
      primaryFixedDim: Color(4294818165),
      onPrimaryFixedVariant: Color(4285086720),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4280883206),
      secondaryFixedDim: Color(4292985252),
      onSecondaryFixedVariant: Color(4284039724),
      tertiaryFixed: Color(4292667572),
      onTertiaryFixed: Color(4279639553),
      tertiaryFixedDim: Color(4290825370),
      onTertiaryFixedVariant: Color(4282469156),
      surfaceDim: Color(4293318605),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963687),
      surfaceContainer: Color(4294634464),
      surfaceContainerHigh: Color(4294239707),
      surfaceContainerHighest: Color(4293910741),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4284758016),
      surfaceTint: Color(4286927640),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288636973),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283776553),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287262807),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282205985),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285430094),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4280359444),
      onSurfaceVariant: Color(4283187510),
      outline: Color(4285160785),
      outlineVariant: Color(4287068268),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806632),
      inversePrimary: Color(4294818165),
      primaryFixed: Color(4288636973),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4286795798),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287262807),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285552448),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285430094),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283850807),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293318605),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963687),
      surfaceContainer: Color(4294634464),
      surfaceContainerHigh: Color(4294239707),
      surfaceContainerHighest: Color(4293910741),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281736192),
      surfaceTint: Color(4286927640),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284758016),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281409035),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283776553),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4280100100),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4282205985),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965493),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281082393),
      outline: Color(4283187510),
      outlineVariant: Color(4283187510),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281806632),
      inversePrimary: Color(4294961365),
      primaryFixed: Color(4284758016),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4282721536),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283776553),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282132757),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4282205985),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4280758284),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293318605),
      surfaceBright: Color(4294965493),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963687),
      surfaceContainer: Color(4294634464),
      surfaceContainerHigh: Color(4294239707),
      surfaceContainerHighest: Color(4293910741),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294818165),
      surfaceTint: Color(4294818165),
      onPrimary: Color(4283049984),
      primaryContainer: Color(4285086720),
      onPrimaryContainer: Color(4294958270),
      secondary: Color(4292985252),
      onSecondary: Color(4282395672),
      secondaryContainer: Color(4284039724),
      onSecondaryContainer: Color(4294958270),
      tertiary: Color(4290825370),
      onTertiary: Color(4281021456),
      tertiaryContainer: Color(4282469156),
      onTertiaryContainer: Color(4292667572),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279833100),
      onSurface: Color(4293910741),
      onSurfaceVariant: Color(4292199349),
      outline: Color(4288515713),
      outlineVariant: Color(4283516218),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293910741),
      inversePrimary: Color(4286927640),
      primaryFixed: Color(4294958270),
      onPrimaryFixed: Color(4281079296),
      primaryFixedDim: Color(4294818165),
      onPrimaryFixedVariant: Color(4285086720),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4280883206),
      secondaryFixedDim: Color(4292985252),
      onSecondaryFixedVariant: Color(4284039724),
      tertiaryFixed: Color(4292667572),
      onTertiaryFixed: Color(4279639553),
      tertiaryFixedDim: Color(4290825370),
      onTertiaryFixedVariant: Color(4282469156),
      surfaceDim: Color(4279833100),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359444),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281346082),
      surfaceContainerHighest: Color(4282135340),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294950525),
      surfaceTint: Color(4294818165),
      onPrimary: Color(4280619520),
      primaryContainer: Color(4290806854),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293313960),
      onSecondary: Color(4280488707),
      secondaryContainer: Color(4289235825),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4291088542),
      onTertiary: Color(4279310592),
      tertiaryContainer: Color(4287272552),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279833100),
      onSurface: Color(4294966008),
      onSurfaceVariant: Color(4292462778),
      outline: Color(4289765523),
      outlineVariant: Color(4287594612),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293910741),
      inversePrimary: Color(4285218049),
      primaryFixed: Color(4294958270),
      onPrimaryFixed: Color(4280159488),
      primaryFixedDim: Color(4294818165),
      onPrimaryFixedVariant: Color(4283575552),
      secondaryFixed: Color(4294958270),
      onSecondaryFixed: Color(4280094209),
      secondaryFixedDim: Color(4292985252),
      onSecondaryFixedVariant: Color(4282855965),
      tertiaryFixed: Color(4292667572),
      onTertiaryFixed: Color(4279046912),
      tertiaryFixedDim: Color(4290825370),
      onTertiaryFixedVariant: Color(4281350677),
      surfaceDim: Color(4279833100),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359444),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281346082),
      surfaceContainerHighest: Color(4282135340),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294966008),
      surfaceTint: Color(4294818165),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294950525),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294966008),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293313960),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294442966),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4291088542),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279833100),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294966008),
      outline: Color(4292462778),
      outlineVariant: Color(4292462778),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293910741),
      inversePrimary: Color(4282458880),
      primaryFixed: Color(4294959817),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294950525),
      onPrimaryFixedVariant: Color(4280619520),
      secondaryFixed: Color(4294959817),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293313960),
      onSecondaryFixedVariant: Color(4280488707),
      tertiaryFixed: Color(4292931000),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4291088542),
      onTertiaryFixedVariant: Color(4279310592),
      surfaceDim: Color(4279833100),
      surfaceBright: Color(4282398768),
      surfaceContainerLowest: Color(4279438599),
      surfaceContainerLow: Color(4280359444),
      surfaceContainer: Color(4280688152),
      surfaceContainerHigh: Color(4281346082),
      surfaceContainerHighest: Color(4282135340),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
