import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double? width;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.primaryOrange,
    this.textColor = Colors.white,
    this.width,
  });

  /// Add to Cart Button (Black)
  const CustomButton.addToCart({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
  })  : backgroundColor = const Color(0xFF1E1E1E),
        textColor = Colors.white;

  /// Buy Now Button (Orange)
  const CustomButton.buyNow({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
  })  : backgroundColor = AppColors.primaryOrange,
        textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 13),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55),
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(55),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyles.buttonText.copyWith(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}