import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/responsive_extensions.dart';

class QuickPayOptions extends StatelessWidget {
  const QuickPayOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildIconBox(context, Assets.pay),
        _buildIconBox(context, Assets.apple),
        _buildIconBox(context, Assets.ppay),
      ],
    );
  }

  Widget _buildIconBox(BuildContext context, String imagePath) {
    return Container(
      width: 105.w(context),
      height: 55.h(context),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(15.r(context)),
      ),
      child: Center(child: Image.asset(imagePath, height: 24.h(context))),
    );
  }
}
