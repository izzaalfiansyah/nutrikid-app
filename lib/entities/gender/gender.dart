import 'package:flutter/material.dart';

enum Gender {
  l,
  p;

  String get name => this == Gender.l ? "Laki-laki" : "Perempuan";
  IconData get icon =>
      this == Gender.l ? Icons.male_rounded : Icons.female_rounded;
  Color get color => this == Gender.l ? Colors.blueAccent : Colors.pink;
}
