import 'package:flutter/material.dart';
import 'routes.dart';
import '../../features/bottom_nav/bottom_nav_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/product/ui/product_screen.dart';
import '../../features/profile/ui/profile_screen.dart';
import '../../features/favorites/ui/favorites_screen.dart';
import '../../features/auth/login/ui/login_screen.dart';
import '../../features/auth/signup/ui/signup_screen.dart';

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

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());

         case Routes.productScreen:
        return MaterialPageRoute(builder: (_) => const ProductScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('No Route Found'))),
        );
    }
  }
}
