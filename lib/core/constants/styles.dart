import 'package:flutter/material.dart';

import 'colors.dart';

/// Global Text Theme
final kAppTextTheme = TextTheme(
  displayLarge:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  displayMedium:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  displaySmall:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  headlineLarge:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  headlineMedium:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  headlineSmall:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  titleLarge:
      TextStyle(fontFamily: 'Arima Madurai', color: Colors.grey.shade900),
  titleMedium: TextStyle(color: Colors.grey.shade900),
  titleSmall: TextStyle(color: Colors.grey.shade900),
  bodyLarge: TextStyle(color: Colors.grey.shade900),
  bodyMedium: TextStyle(color: Colors.grey.shade900),
  bodySmall: TextStyle(color: Colors.grey.shade900),
  labelLarge: TextStyle(color: Colors.grey.shade900),
  labelMedium: TextStyle(color: Colors.grey.shade900),
  labelSmall: TextStyle(color: Colors.grey.shade900),
);

/// Global App Theme
List<int> swatchKeys = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];
Map<int, Color> getSwatchPairs() {
  final Map<int, Color> swatchPairs = {};
  for (final item in swatchKeys) {
    swatchPairs[item] = kGreen.withOpacity(item / 1000);
  }
  return swatchPairs;
}

final primarySwatch = MaterialColor(kGreen.value, getSwatchPairs());

final kAppThemeLight = ThemeData(
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primarySwatch,
    backgroundColor: Colors.grey.shade300,
    brightness: Brightness.light,
    accentColor: kLightBlueCharcoal,
    cardColor: Colors.white,
    errorColor: kRed,
  ).copyWith(
    onPrimary: Colors.grey.shade900,
  ),
  fontFamily: 'Nunito',
  scaffoldBackgroundColor: Colors.grey.shade300,
  textTheme: kAppTextTheme,
);

final kAppThemeDark = kAppThemeLight.copyWith(
  colorScheme: kAppThemeLight.colorScheme.copyWith(
    primary: kDarkGreen,
    background: Colors.grey.shade900,
    brightness: Brightness.dark,
    surface: Colors.grey.shade800,
    onSurface: Colors.grey.shade200,
  ),
  scaffoldBackgroundColor: Colors.grey.shade900,
  textTheme: kAppTextTheme.apply(
    bodyColor: Colors.grey.shade300,
    displayColor: Colors.grey.shade200,
  ),
  hintColor: Colors.grey.shade500,
);

/// Paddings
const kTextPadding = EdgeInsets.symmetric(vertical: 15, horizontal: 20);
