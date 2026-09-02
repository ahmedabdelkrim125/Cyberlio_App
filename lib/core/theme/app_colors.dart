import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryOrange = Color(0xFFFF5500);
  static const Color white = Colors.white;
  static const Color white70 = Colors.white70;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  // Greys
  static const Color greyLightest = Color(0xFFFAFAFA);
  static const Color greyLight = Color(0xFFF5F5F5);
  static const Color greyBorder = Color(0xFFEEEEEE);
  static const Color greyBorderStrong = Color(0xFFE0E0E0);
  static const Color greyText = Color(0xFF9E9E9E);
  static const Color greyIcon = Color(0xFF757575);

  static const Color amber = Color(0xFFFFC107);
  static const Color success = Color(0xFF4CAF50);

  // Checkout Card Gradients
  static const List<Color> orangeGradient = [
    Color(0xFFFF8FB1), // Pinkish start
    Color(0xFFFF5500), // Orange end
  ];

  static const List<Color> purpleGradient = [
    Color(0xFF7B2FF7),
    Color(0xFF3B108B),
  ];

  // Background colors for recently viewed
  static const Color pinkBack = Color(0xFFFFEBEB);
  static const Color yellowBack = Color(0xFFFEF9EB);

  // Product swatch colors
  static const Color swatchTan = Color(0xFFD2B48C);
}
