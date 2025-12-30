import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:e_commerce_app/features/home/ui/home_screen.dart';
import 'package:e_commerce_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No Route Found'),
            ),
          ),
        );
    }
  }
}
