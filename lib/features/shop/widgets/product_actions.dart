import 'package:e_commerce_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';

class ProductActions extends StatelessWidget {
  const ProductActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildButton(
          context,
          title: 'Add to cart',
          color: Colors.black,
          textColor: Colors.white,
        ),
        verticalSpace(context, height: 12),
        _buildButton(
          context,
          title: 'Buy Now',
          color: AppColors.primaryOrange,
          textColor: Colors.white,
        ),
      ],
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String title,
    required Color color,
    required Color textColor,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 55.h(context),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r(context)),
          ),
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: 16.r(context),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
