import 'package:e_commerce_app/features/shop/widgets/product_actions.dart';
import 'package:e_commerce_app/features/shop/widgets/product_images_slider.dart';
import 'package:e_commerce_app/features/shop/widgets/product_info_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';
import '../../../../core/constants/app_images.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(Assets.wishlistIcon, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.share_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.responsivePadding(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductImagesSlider(),
              verticalSpace(context, height: 30),
              const ProductInfoHeader(),
              verticalSpace(context, height: 40),
              const ProductActions(),
              verticalSpace(context, height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
