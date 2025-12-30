import 'package:e_commerce_app/core/constants/app_images.dart';
import 'package:e_commerce_app/features/onboarding/widgets/onboarding_button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.onboarding),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: OnboardingButton(
                title: 'LOG IN',
                onPressed: () {
                  // Navigator.pushNamed(context, Routes.loginScreen);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
