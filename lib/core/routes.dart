import 'package:flutter/material.dart';
import 'package:gardeny/core/screens/play_ground_screen.dart';

enum Routes {
  playGround,
}

Map<String, Widget Function(BuildContext)> getRoutes(BuildContext context) {
  return {
    Routes.playGround.name: (context) => const PlayGroundScreen(),
  };
}
