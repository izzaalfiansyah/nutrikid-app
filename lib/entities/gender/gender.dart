import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

enum Gender {
  l,
  p;

  String get name => this == Gender.l ? "Laki-laki" : "Perempuan";
  IconData get icon =>
      this == Gender.l ? LucideIcons.dumbbell : LucideIcons.cake;
  Color get color => this == Gender.l ? Colors.blueAccent : Colors.pink;
}
