import 'package:get/get.dart';

enum Messages {
  playGround,
  thisIsAWidget,
  thisIsADifferentText,
}

class Tr {
  static final String playGround = Messages.playGround.name.tr;
  static final String thisIsAWidget = Messages.thisIsAWidget.name.tr;
  static final String thisIsADifferentText =
      Messages.thisIsADifferentText.name.tr;
}
