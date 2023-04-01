import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gardeny/core/constants/styles.dart';
import 'package:gardeny/core/routes.dart';
import 'package:get/get.dart';

import 'translations/root.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AppConfig(
      initialRoute: kIsWeb && kDebugMode
          ? Routes.widgetBook.name
          : Routes.playGround.name,
    );
  }
}

class AppConfig extends StatelessWidget {
  const AppConfig({
    super.key,
    required this.initialRoute,
  });

  final String? initialRoute;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      translations: AppTranslations(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      routes: getRoutes(context),
      theme: kAppThemeLight,
      darkTheme: kAppThemeDark,
    );
  }
}
