import 'package:flutter/material.dart';
import 'package:skkoolio/features/onboarding_feature/presentation/widgets/onboarding_screen_body.dart';

import '../../../../core/utils/app_colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainColor,
      body: OnboardingScreenBody(),
    );
  }
}
