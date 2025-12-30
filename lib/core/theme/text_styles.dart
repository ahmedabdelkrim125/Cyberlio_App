import 'package:flutter/material.dart';
import 'app_colors.dart';

class TextStyles {
  /// Used for Onboarding primary button text (LOG IN)
  static const TextStyle onboardingButton = TextStyle(
    color: AppColors.primaryOrange,
    fontSize: 14,
    fontFamily: 'PPMori',
    fontWeight: FontWeight.w600,
  );

  /// Used for TextButton like "SKIP"
  static const TextStyle skipButton = TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'PPMori',
    fontWeight: FontWeight.w600,
  );
}
