import 'package:flutter/material.dart';

class SizeConfig {
  static double? screenHeight;
  static double? screenWidth;
  static double? blockSizeVertical;
  static double? blockSizeHorizontal;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;
    blockSizeVertical = screenHeight! / 100;
    blockSizeHorizontal = screenWidth! / 100;
  }
}
