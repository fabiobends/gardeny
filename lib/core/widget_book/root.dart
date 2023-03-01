import 'package:flutter/material.dart';
import 'package:gardeny/core/widget_book/categories/widgets.dart';
import 'package:widgetbook/widgetbook.dart';

class WidgetBookScreen extends StatelessWidget {
  const WidgetBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [widgetsCategory],
      themes: _widgetBookThemes,
      appInfo: AppInfo(name: 'Gardeny Examples'),
    );
  }
}

List<WidgetbookTheme<ThemeData>> _widgetBookThemes = [
  WidgetbookTheme(
    name: 'Light',
    data: ThemeData.light(),
  ),
  WidgetbookTheme(
    name: 'Dark',
    data: ThemeData.dark(),
  ),
];
