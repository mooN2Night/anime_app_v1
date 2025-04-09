import 'package:flutter/material.dart';

const _primaryColor = Color(0xFF03fcb1);

final darkTheme = ThemeData(
  useMaterial3: true,
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: Colors.black,
  // textTheme: _textTheme,
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    brightness: Brightness.dark,
  ),
);

final lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: _primaryColor,
  scaffoldBackgroundColor: const Color(0xFFEFF1F3),
  textTheme: TextTheme(
    labelMedium: TextStyle(
      color: Colors.black.withValues(alpha: 0.7),
      fontWeight: FontWeight.w400,
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    type: BottomNavigationBarType.fixed,
    landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
    selectedIconTheme: const IconThemeData(
      color: Colors.black,
      opacity: 1,
    ),
    unselectedIconTheme: const IconThemeData(
      color: Colors.grey,
      opacity: 0.8,
    ),
    unselectedLabelStyle: TextStyle(
      color: Colors.grey.withValues(alpha: 0.8),
    ),
  ),
  dividerTheme: DividerThemeData(
    color: Colors.grey.withValues(alpha: 0.1),
  ),
  colorScheme: ColorScheme.fromSeed(
    seedColor: _primaryColor,
    brightness: Brightness.light,
    surface: Colors.white,
  ),
);

const _textTheme = TextTheme(
  titleMedium: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  ),
  headlineLarge: TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  ),
);

// extension ThemePlatformExtension on ThemeData {
//   bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
//   bool get isCupertino => [TargetPlatform.iOS, TargetPlatform.macOS]
//       .contains(defaultTargetPlatform);
//   Color get cupertinoAlertColor => const Color(0xFFF82B10);
//   Color get cupertinoActionColor => const Color(0xFF3478F7);
// }
