import 'package:e_commerce_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';

class ProductInfoHeader extends StatelessWidget {
  const ProductInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sony WH-1000XM5',
          style: TextStyle(
            fontSize: 24.r(context),
            fontWeight: FontWeight.bold,
            fontFamily: 'PPMori',
          ),
        ),
        verticalSpace(context, height: 8),
        Row(
          children: [
            Text(
              '\$ 4.999',
              style: TextStyle(
                fontSize: 20.r(context),
                fontWeight: FontWeight.bold,
                color: AppColors.primaryOrange,
              ),
            ),
            horizontalSpace(context, width: 8),
            Text(
              '| Including taxes and duties',
              style: TextStyle(fontSize: 12.r(context), color: AppColors.greyText),
            ),
          ],
        ),
        verticalSpace(context, height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Colors dots
            Row(
              children: [
                _buildColorDot(AppColors.black, true),
                _buildColorDot(AppColors.swatchTan, false),
                _buildColorDot(AppColors.greyBorderStrong, false),
              ],
            ),
            // Rating
            Row(
              children: [
                const Icon(Icons.star, color: AppColors.amber, size: 20),
                Text(
                  ' 4.8',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.r(context),
                  ),
                ),
                Text(
                  ' (231)',
                  style: TextStyle(color: AppColors.greyText, fontSize: 12.r(context)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildColorDot(Color color, bool isSelected) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isSelected ? Border.all(color: AppColors.black, width: 1) : null,
      ),
      child: CircleAvatar(radius: 10, backgroundColor: color),
    );
  }
}
