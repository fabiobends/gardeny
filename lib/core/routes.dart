import 'package:flutter/material.dart';
import 'package:gardeny/core/screens/play_ground_screen.dart';
import 'package:gardeny/core/widget_book/root.dart';

enum Routes {
  playGround,
  widgetBook,
}

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {
  return {
    Routes.playGround.name: (context) => const PlayGroundScreen(),
    Routes.widgetBook.name: (context) => const WidgetBookScreen(),
  };
}
