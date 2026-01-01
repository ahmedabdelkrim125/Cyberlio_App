import 'package:flutter/material.dart';

class AppColors {
  /// Brand
  static const Color primaryOrange = Color(0xFFFF5500);

  /// Neutrals
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color iconGrey = Color(0xFF767676);
  static const Color lightGreyBackground = Color(0xFFF7F7F7);
  static const Color greyLight = Color(0xFFF5F5F5);

  /// Product Screen Colors (from design)
  static const Color darkGrey = Color(0xFF3F4343);
  static const Color beigeGrey = Color(0xFFCCC6BA);
  static const Color lightGrey = Color(0xFFCFCFCF);
  static const Color mediumGrey = Color(0xFF909090);

  /// Text Colors
  static const Color textNeutralDefault = Color(0xFF303030);
  static const Color textSecondary = Color(0xFF757575);

  /// Button Colors
  static const Color buttonBlack = Color(0xFF3F4343);

  /// Checkout Card Gradients
  static const List<Color> orangeGradient = [
    Color(0xFFFF8FB1), // Pinkish start
    Color(0xFFFF5500), // Orange end
  ];

  static const List<Color> purpleGradient = [
    Color(0xFF7B2FF7),
    Color(0xFF3B108B),
  ];

  /// Background colors for recently viewed
  static const Color pinkBack = Color(0xFFFFEBEB);
  static const Color yellowBack = Color(0xFFFEF9EB);
}
