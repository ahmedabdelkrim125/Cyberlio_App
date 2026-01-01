import 'package:e_commerce_app/core/constants/app_images.dart';
import 'package:e_commerce_app/core/helper/responsive_extensions.dart';
import 'package:e_commerce_app/core/helper/spacing.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/text_styles.dart';
import 'Widgets/product_details_appbar.dart';
import 'Widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int selectedImageIndex = 0;
  int selectedColorIndex = 0;

  final List<String> thumbnailImages = [
    Assets.image_1,
    Assets.image_2,
    Assets.image_3,
  ];

  final List<Color> productColors = [
    AppColors.darkGrey,
    AppColors.beigeGrey,
    AppColors.lightGrey,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ProductDetailsAppBar(),
              _buildMainProductImage(context),
              verticalSpace(context, height: 20),
              _buildDotsIndicator(context),
              verticalSpace(context, height: 16),
              _buildThumbnailImages(context),
              verticalSpace(context, height: 55),
              _buildProductInfo(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainProductImage(BuildContext context) {
    return Center(
      child: Image.asset(
        Assets.product,
        height: 250.h(context),
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildDotsIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        thumbnailImages.length,
        (index) => AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 4.w(context)),
          width: selectedImageIndex == index ? 24.w(context) : 8.w(context),
          height: 8.h(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r(context)),
            color: selectedImageIndex == index
                ? AppColors.primaryOrange
                : AppColors.primaryOrange.withOpacity(0.3),
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnailImages(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          thumbnailImages.length,
          (index) => _buildThumbnailItem(context, index),
        ),
      ),
    );
  }

  Widget _buildThumbnailItem(BuildContext context, int index) {
    final isSelected = selectedImageIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImageIndex = index;
        });
      },
      child: Container(
        width: 100.w(context),
        height: 100.h(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r(context)),
          border: Border.all(
            color: isSelected ? AppColors.primaryOrange : Colors.transparent,
            width: 2.w(context),
          ),
        ),
        child: Center(
          child: Image.asset(
            thumbnailImages[index],
            width: 65.w(context),
            height: 65.h(context),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }

  Widget _buildProductInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildProductTitle(context),
        verticalSpace(context, height: 8),
        _buildPriceInfo(context),
        verticalSpace(context, height: 16),
        _buildColorSelectorAndRating(context),
        _buildDivider(context),
        verticalSpace(context, height: 24),
        _buildButtons(context),
      ],
    );
  }

  Widget _buildColorSelectorAndRating(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildColorSelector(context), _buildRating(context)],
      ),
    );
  }

  Widget _buildColorSelector(BuildContext context) {
    return Row(
      children: List.generate(
        productColors.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedColorIndex = index;
            });
          },
          child: _buildColorOption(
            context,
            productColors[index],
            selectedColorIndex == index,
          ),
        ),
      ),
    );
  }

  Widget _buildColorOption(BuildContext context, Color color, bool isSelected) {
    return Container(
      width: 44.w(context),
      height: 44.h(context),
      margin: EdgeInsets.only(right: 12.w(context)),
      padding: EdgeInsets.all(2.w(context)),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: isSelected
            ? Border.all(color: color, width: 2.w(context))
            : null,
      ),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
      ),
    );
  }

  Widget _buildRating(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: const Color(0xFFFFB800), size: 20.w(context)),
        SizedBox(width: 4.w(context)),
        Text(
          '4.8',
          style: TextStyles.productSecondaryText.copyWith(
            fontSize: 16,
            color: AppColors.darkGrey,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 4.w(context)),
        Text(
          '(231)',
          style: TextStyles.productSecondaryText.copyWith(
            fontSize: 16,
            color: AppColors.mediumGrey,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildProductTitle(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: context.responsivePadding(left: 16),
        child: const Text('Sony WH-1000XM5', style: TextStyles.productTitle),
      ),
    );
  }

  Widget _buildPriceInfo(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Row(
        spacing: context.responsiveWidth(8),
        children: [
          const Text('\$ 4.999', style: TextStyles.productPrice),
          const Text('|', style: TextStyles.dividerText),
          const SizedBox(
            width: 200,
            child: Text(
              'Including taxes and duties',
              style: TextStyles.productSecondaryText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Divider(
        color: AppColors.lightGrey.withOpacity(0.5),
        thickness: 1.5,
        height: 40.h(context),
      ),
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16),
      child: Column(
        children: [
          CustomButton.addToCart(
            text: 'Add to cart',
            onPressed: () {
              // Add to cart logic
            },
          ),
          verticalSpace(context, height: 12),
          CustomButton.buyNow(
            text: 'Buy Now',
            onPressed: () {
              // Buy now logic
            },
          ),
        ],
      ),
    );
  }
}
