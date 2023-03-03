import 'package:flutter/material.dart';

import 'colors.dart';

final kAppThemeLight = ThemeData(
  fontFamily: 'Nunito',
  buttonTheme: const ButtonThemeData(buttonColor: kLightBlueCharcoal),
  colorScheme: const ColorScheme(
    primary: kGreen,
    onPrimary: Colors.black,
    secondary: kLightBlueCharcoal,
    onSecondary: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    brightness: Brightness.light,
    surface: Colors.blueGrey,
    onSurface: Colors.black,
    error: Colors.white,
    onError: kRed,
  ),
  textTheme: kAppTextTheme,
);

const kAppTextTheme = TextTheme(
  displayLarge: TextStyle(fontFamily: 'Arima Madurai'),
  displayMedium: TextStyle(fontFamily: 'Arima Madurai'),
  displaySmall: TextStyle(fontFamily: 'Arima Madurai'),
  headlineLarge: TextStyle(fontFamily: 'Arima Madurai'),
  headlineMedium: TextStyle(fontFamily: 'Arima Madurai'),
  headlineSmall: TextStyle(fontFamily: 'Arima Madurai'),
  titleLarge: TextStyle(fontFamily: 'Arima Madurai'),
);

final kAppThemeDark = kAppThemeLight.copyWith(
  scaffoldBackgroundColor: Colors.grey[850],
  colorScheme: ColorScheme(
    primary: kDarkGreen,
    onPrimary: Colors.white,
    secondary: kBlueCharcoal,
    onSecondary: Colors.white,
    background: Colors.grey[850] ?? Colors.grey.shade900,
    onBackground: Colors.white,
    brightness: Brightness.light,
    surface: Colors.black,
    onSurface: Colors.blueGrey,
    error: Colors.grey.shade800,
    onError: kRed,
  ),
  textTheme: kAppTextTheme.apply(
    bodyColor: Colors.white,
    displayColor: Colors.white,
  ),
);
