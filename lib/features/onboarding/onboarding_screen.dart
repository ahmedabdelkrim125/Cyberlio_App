import 'package:e_commerce_app/core/constants/app_images.dart';
import 'package:e_commerce_app/features/onboarding/widgets/onboarding_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/helper/extensions.dart';
import '../../core/routing/routes.dart';
import '../../core/theme/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background
          Positioned.fill(
            child: Image.asset(Assets.onboarding, fit: BoxFit.cover),
          ),

          /// Button (Bottom like Figma)
          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 50.h,
            child: Column(
              spacing: 12.h,
              children: [
                OnboardingButton(
                  title: 'LOG IN',
                  onPressed: () {
                    // Navigator.pushNamed(context, Routes.loginScreen);
                  },
                ),
                TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.homeScreen);
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text('SKIP', style: TextStyles.skipButton),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
