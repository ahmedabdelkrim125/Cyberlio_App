import 'package:e_commerce_app/core/routing/app_router.dart';
import 'package:e_commerce_app/core/routing/routes.dart';
import 'package:flutter/material.dart';

class Cyberlio extends StatelessWidget {
  const Cyberlio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
