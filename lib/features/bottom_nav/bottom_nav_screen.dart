import '../../core/constants/app_images.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/text_styles.dart';
import '../home/ui/home_screen.dart';
import '../shop/ui/shop_screen.dart';
import '../favorites/ui/favorites_screen.dart';
import '../profile/ui/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../core/helper/responsive_extensions.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const ShopScreen(),
    const FavoritesScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10.r(context),
              offset: Offset(0, -2.h(context)),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: context.responsivePadding(horizontal: 16, vertical: 12),
            child: GNav(
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              gap: 8.w(context),
              color: Colors.grey[600],
              activeColor: AppColors.primaryOrange,
              tabBackgroundColor: AppColors.primaryOrange.withOpacity(0.1),
              padding: EdgeInsets.symmetric(
                horizontal: 16.w(context),
                vertical: 12.h(context),
              ),
              tabBorderRadius: 12.r(context),
              tabs: [
                _buildTab(
                  context: context,
                  iconPath: Assets.homeIcon,
                  text: 'Home',
                  isActive: _currentIndex == 0,
                ),
                _buildTab(
                  context: context,
                  iconPath: Assets.shopIcon,
                  text: 'Shop',
                  isActive: _currentIndex == 1,
                ),
                _buildTab(
                  context: context,
                  iconPath: Assets.favoriteIcon,
                  text: 'Favorites',
                  isActive: _currentIndex == 2,
                ),
                _buildTab(
                  context: context,
                  iconPath: Assets.profileIcon,
                  text: 'Profile',
                  isActive: _currentIndex == 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GButton _buildTab({
    required BuildContext context,
    required String iconPath,
    required String text,
    required bool isActive,
  }) {
    return GButton(
      icon: Icons.circle,
      iconSize: 0,
      text: text,
      textStyle: TextStyles.bottomNavText.copyWith(
        fontSize: context.responsiveFontSize(14),
      ),
      leading: SvgPicture.asset(
        iconPath,
        width: 22.w(context),
        height: 22.h(context),
        colorFilter: ColorFilter.mode(
          isActive ? AppColors.primaryOrange : Colors.grey[600]!,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
