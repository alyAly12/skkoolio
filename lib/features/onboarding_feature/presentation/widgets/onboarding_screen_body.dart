import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/utils/app_strings.dart';
import 'package:skkoolio/core/utils/assets_manager.dart';
import '../../../../core/routing/routes.dart';

class OnboardingScreenBody extends StatelessWidget {
  const OnboardingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: AppStrings.login,
      finishButtonTextStyle: const TextStyle(
        fontSize: 22,
        color: AppColors.mainColor,
        fontWeight: FontWeight.w500,
      ),
      onFinish: () {
        Navigator.pushReplacementNamed(context, Routes.loginScreen);
      },
      finishButtonStyle: const FinishButtonStyle(
          backgroundColor: AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          )),
      skipTextButton: const Text(
        'Skip',
        style: TextStyle(
          fontSize: 16,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: const Text(
        AppStrings.login,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.pushReplacementNamed(context, Routes.loginScreen);
      },
      controllerColor: AppColors.primaryColor,
      totalPage: 4,
      headerBackgroundColor: AppColors.mainColor,
      pageBackgroundColor: AppColors.mainColor,
      background: [
        SvgPicture.asset(
          AssetsManager.onboard1,
          height: 400,
        ),
        SvgPicture.asset(
          AssetsManager.onboard2,
          height: 400,
        ),
        SvgPicture.asset(
          AssetsManager.onboard3,
          height: 400,
        ),
        SvgPicture.asset(
          AssetsManager.onboard4,
          height: 400,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 420,
              ),
              Text(
                AppStrings.welcome,
                style: TextStyle(fontSize: 18),
                maxLines: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.welcomeBody,
                style: TextStyle(fontSize: 15),
                maxLines: 5,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 420,
              ),
              Text(
                AppStrings.stayConnected,
                style: TextStyle(fontSize: 18),
                maxLines: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.stayConnectedBody,
                style: TextStyle(fontSize: 15),
                maxLines: 5,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 420,
              ),
              Text(
                AppStrings.trackProgress,
                style: TextStyle(fontSize: 18),
                maxLines: 5,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.trackProgressBody,
                style: TextStyle(fontSize: 15),
                maxLines: 5,
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 420,
              ),
              Text(
                AppStrings.letsStart,
                style: TextStyle(fontSize: 18),
                maxLines: 5,
              ),
              SizedBox(height: 20),
              Text(
                AppStrings.letsStartBody,
                style: TextStyle(fontSize: 15),
                maxLines: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
