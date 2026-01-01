import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  /// Used for Onboarding primary button text (LOG IN)
  static const TextStyle onboardingButton = TextStyle(
    color: AppColors.primaryOrange,
    fontSize: 14,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Used for TextButton like "SKIP"
  static const TextStyle skipButton = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Used for Bottom Navigation Bar text
  static const TextStyle bottomNavText = TextStyle(
    color: AppColors.primaryOrange,
    fontSize: 14,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Product Title
  static const TextStyle productTitle = TextStyle(
    color: AppColors.textNeutralDefault,
    fontSize: 24,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Product Price
  static const TextStyle productPrice = TextStyle(
    color: AppColors.primaryOrange,
    fontSize: 20,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Product Secondary Text (taxes, duties, etc.)
  static const TextStyle productSecondaryText = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 20,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Divider Text
  static const TextStyle dividerText = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 20,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );

  /// Button Text (Add to cart, Buy Now, etc.)
  static const TextStyle buttonText = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'PP Mori',
    fontWeight: FontWeight.w600,
  );
}
