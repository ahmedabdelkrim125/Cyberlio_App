import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../core/constants/app_images.dart';
import '../../../../../core/helper/responsive_extensions.dart';
import '../../../../../core/helper/spacing.dart';

class RecentlyViewedSection extends StatelessWidget {
  const RecentlyViewedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
      child: Row(
        children: [
          _buildViewedCard(context, Assets.laptop1, const Color(0xFFFFEBEB)),
          horizontalSpace(context, width: 12),
          _buildViewedCard(context, Assets.speaker, const Color(0xFFFEF9EB)),
        ],
      ),
    );
  }

  Widget _buildViewedCard(BuildContext context, String image, Color bgColor) {
    return Expanded(
      child: Container(
        height: 120.h(context),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20.r(context)),
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(15.r(context)),
                child: Image.asset(image, fit: BoxFit.contain),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: CircleAvatar(
                radius: 14.r(context),
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  Assets.wishlistIcon, // استخدام الـ SVG المعرف عندك
                  width: 16.w(context),
                  height: 16.h(context),
                  colorFilter: const ColorFilter.mode(
                    Colors.orange,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
