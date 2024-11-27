import 'package:flutter/material.dart';
import 'package:fruit_hub/core/routes/routes.dart';
import 'package:fruit_hub/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    executeNavigation();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, Routes.onBoarding);
    });
  }
}
