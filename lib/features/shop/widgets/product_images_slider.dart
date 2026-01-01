import 'package:e_commerce_app/core/helper/spacing.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({super.key});

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  int _currentIndex = 1;
  final List<String> _images = [
    Assets.head1,
    Assets.bigheadphone,
    Assets.head2,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250.h(context),
          child: Image.asset(_images[_currentIndex], fit: BoxFit.contain),
        ),
        verticalSpace(context, height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(_images.length, (index) {
            bool isSelected = _currentIndex == index;
            return GestureDetector(
              onTap: () => setState(() => _currentIndex = index),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w(context)),
                padding: EdgeInsets.all(8.r(context)),
                width: 60.w(context),
                height: 60.h(context),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected
                        ? AppColors.primaryOrange
                        : Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(15.r(context)),
                ),
                child: Image.asset(_images[index], fit: BoxFit.contain),
              ),
            );
          }),
        ),
      ],
    );
  }
}
