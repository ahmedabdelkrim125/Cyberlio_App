import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/theme/app_colors.dart';

class FinalizePurchaseButton extends StatelessWidget {
  const FinalizePurchaseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 58.h(context),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.r(context)),
          ),
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          'Finalize Purchase',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.r(context),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
