import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/constants/app_images.dart';

class CheckoutProductInfo extends StatelessWidget {
  const CheckoutProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 60.w(context),
        height: 60.h(context),
        padding: EdgeInsets.all(5.r(context)),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(12.r(context)),
        ),
        child: Image.asset(Assets.head1, fit: BoxFit.contain),
      ),
      title: Text(
        'Sony WH-1000XM5',
        style: TextStyle(
          fontSize: 16.r(context),
          fontWeight: FontWeight.bold,
          fontFamily: 'PPMori',
        ),
      ),
      subtitle: Row(
        children: [
          Text(
            '\$ 4.999',
            style: TextStyle(
              fontSize: 14.r(context),
              color: AppColors.primaryOrange,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' | Including taxes and duties',
            style: TextStyle(fontSize: 11.r(context), color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
