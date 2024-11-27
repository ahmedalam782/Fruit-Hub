import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routes/routes.dart';
import 'package:fruit_hub/features/on_boarding/presentation/views/screens/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/views/screen/splash_view.dart';

class RouteGenerator {
  static Route<dynamic>? getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      default:
        return _undefinedRoute();
    }
  }

  static Route<dynamic> _undefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
