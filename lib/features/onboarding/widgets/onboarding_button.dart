import 'package:e_commerce_app/core/helper/responsive_extensions.dart';
import 'package:flutter/material.dart';

class OnboardingButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;

  const OnboardingButton({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.w(context)),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          height: 48.h(context),
          padding: EdgeInsets.symmetric(
            horizontal: 124.w(context),
            vertical: 15.h(context),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(65.r(context)),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Color(0xFFFF5500),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
