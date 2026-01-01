import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_commerce_app/core/helper/responsive_extensions.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/theme/app_colors.dart';

class ProductDetailsAppBar extends StatelessWidget {
  final VoidCallback? onBackPressed;
  final VoidCallback? onFavoritePressed;
  final VoidCallback? onSharePressed;

  const ProductDetailsAppBar({
    super.key,
    this.onBackPressed,
    this.onFavoritePressed,
    this.onSharePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(all: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ActionButton(
            onPressed: onBackPressed ?? () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios, color: AppColors.iconGrey),
          ),

          Row(
            children: [
              _ActionButton(
                onPressed: onFavoritePressed ?? () {},
                child: SvgPicture.asset(
                  Assets.favoriteIcon,
                  color: AppColors.iconGrey,
                ),
              ),
              SizedBox(width: 12.w(context)),
              _ActionButton(
                onPressed: onSharePressed ?? () {},
                child: SvgPicture.asset(
                  Assets.uploadIcon,
                  color: AppColors.iconGrey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const _ActionButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.lightGreyBackground,
      radius: 30.r(context),
      child: IconButton(
        onPressed: onPressed,
        icon: child,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      ),
    );
  }
}
