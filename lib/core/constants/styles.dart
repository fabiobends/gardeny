import 'package:flutter/material.dart';

import 'colors.dart';

List<int> swatchKeys = [50, 100, 200, 300, 400, 500, 600, 700, 800, 900];

Map<int, Color> getSwatchPairs() {
  final Map<int, Color> swatchPairs = {};
  for (final item in swatchKeys) {
    swatchPairs[item] = kGreen.withOpacity(item / 1000);
  }
  return swatchPairs;
}

final primarySwatch = MaterialColor(kGreen.value, getSwatchPairs());

const TextTheme kAppTextTheme = TextTheme(
  displayLarge: TextStyle(fontFamily: 'Arima Madurai'),
  displayMedium: TextStyle(fontFamily: 'Arima Madurai'),
  displaySmall: TextStyle(fontFamily: 'Arima Madurai'),
  headlineLarge: TextStyle(fontFamily: 'Arima Madurai'),
  headlineMedium: TextStyle(fontFamily: 'Arima Madurai'),
  headlineSmall: TextStyle(fontFamily: 'Arima Madurai'),
  titleLarge: TextStyle(fontFamily: 'Arima Madurai'),
);

final kAppThemeLight = ThemeData(
  fontFamily: 'Nunito',
  textTheme: kAppTextTheme,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primarySwatch,
    backgroundColor: Colors.grey.shade400,
    brightness: Brightness.light,
    accentColor: kBlueCharcoal,
    primaryColorDark: kDarkGreen,
    cardColor: Colors.white,
    errorColor: kRed,
  ),
);

final kAppThemeDark = kAppThemeLight.copyWith(
  scaffoldBackgroundColor: Colors.grey.shade900,
  textTheme: kAppTextTheme.apply(
    displayColor: Colors.grey.shade200,
    bodyColor: Colors.grey.shade300,
  ),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: primarySwatch,
    backgroundColor: Colors.grey.shade900,
    brightness: Brightness.dark,
    accentColor: kLightBlueCharcoal,
    primaryColorDark: kLightGreen,
    cardColor: Colors.grey.shade800,
    errorColor: kRed,
  ),
);
