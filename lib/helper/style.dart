import 'package:flutter/material.dart';

class Insets {
  static const double xs = 3;
  static const double sm = 4;
  static const double md = 5;
  static const double lg = 10;
  static const double xl = 20;
}

class Fonts {
  static const String primary = 'Raleway';
}

class TextStyles {
  static const TextStyle primary = TextStyle(
    fontFamily: Fonts.primary,
  );
  static TextStyle buttonText = const TextStyle(fontWeight: FontWeight.bold, fontSize: 14);
  static TextStyle h1 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
  static TextStyle h2 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);
  static TextStyle body1 = primary.copyWith(color: const Color(0xFF42A5F5));
}