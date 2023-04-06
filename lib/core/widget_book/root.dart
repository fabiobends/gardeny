import 'package:flutter/material.dart';
import 'package:gardeny/core/constants/styles.dart';
import 'package:gardeny/core/widget_book/categories/widgets/widgets.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetBookScreen extends StatelessWidget {
  const WidgetBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [widgetsCategory],
      themes: _widgetBookThemes,
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('pt', 'BR'),
      ],
      appInfo: AppInfo(name: 'Gardeny Examples'),
    );
  }
}

List<WidgetbookTheme<ThemeData>> _widgetBookThemes = [
  WidgetbookTheme(
    name: 'Light',
    data: kAppThemeLight,
  ),
  WidgetbookTheme(
    name: 'Dark',
    data: kAppThemeDark,
  ),
];
