import 'package:flutter/material.dart';
import 'package:gardeny/core/routes.dart';
import 'package:get/get.dart';

import 'widget_book/root.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    if (GetPlatform.isWeb) {
      return const WidgetBookScreen();
    }
    return GetMaterialApp(
      initialRoute: Routes.playGround.name,
      routes: getRoutes(context),
    );
  }
}
