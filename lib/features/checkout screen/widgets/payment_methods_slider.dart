import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/theme/app_colors.dart';
import 'payment_card.dart';

class PaymentMethodsSlider extends StatelessWidget {
  const PaymentMethodsSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h(context),
      child: ListView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        children: [
          const PaymentCard(
            gradient: AppColors.orangeGradient,
            cardNumber: '1921',
            isSelected: true,
          ),
          horizontalSpace(context, width: 12),
          const PaymentCard(
            gradient: AppColors.purpleGradient,
            cardNumber: '5632',
          ),
        ],
      ),
    );
  }
}
