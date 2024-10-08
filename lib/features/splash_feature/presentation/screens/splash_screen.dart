import 'package:flutter/material.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/utils/assets_manager.dart';
import '../../../../core/routing/routes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    nextScreen(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: AppColors.primaryColor,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsManager.logoBack,
            fit: BoxFit.fill,
          ),
        ],
      )
    );
  }
  void nextScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.onboardingScreen);
    });
  }
}
