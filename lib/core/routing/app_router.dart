import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

import '../../features/bottom_nav/bottom_nav_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/profile/ui/profile_screen.dart';
import '../../features/favorites/ui/favorites_screen.dart';
import '../../features/checkout screen/ui/checkout_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.wishlistScreen:
        return MaterialPageRoute(builder: (_) => const FavoritesScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

      case Routes.bottomNavScreen:
        return MaterialPageRoute(builder: (_) => const BottomNavScreen());

      case Routes.checkoutScreen:
        return MaterialPageRoute(builder: (_) => const CheckoutScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}
