import 'package:flutter/material.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/helper/responsive_extensions.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r(context)),
        child: Image.asset(Assets.home, fit: BoxFit.cover),
      ),
    );
  }
}
