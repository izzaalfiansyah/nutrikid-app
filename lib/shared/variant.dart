import 'package:flutter/material.dart';

class VariantColor {
  static Color get primary => Color(0xFF0D9AFD);
  static Color get destructive => Color(0xFFE11D47);
  static Color get background => Color.fromARGB(255, 250, 250, 250);
  static Color get muted => Color.fromARGB(255, 100, 100, 100);
  static Color get border => VariantColor.muted.withAlpha(50);
}
