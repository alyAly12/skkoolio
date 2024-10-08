import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_strings.dart';
import 'package:skkoolio/core/utils/assets_manager.dart';

import '../../../../core/common_widgets/custom_button.dart';
import '../../../../core/common_widgets/loading_widget.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/utils/app_colors.dart';

class OtpScreenBody extends StatefulWidget {
  const OtpScreenBody({super.key});

  @override
  State<OtpScreenBody> createState() => _OtpScreenBodyState();
}

class _OtpScreenBodyState extends State<OtpScreenBody> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
                height: 400,
                width: 400,
                child: SvgPicture.asset(AssetsManager.otpImg)),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextWidget(
              title: AppStrings.verify,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextWidget(
              title: AppStrings.verifyBody,
              fontSize: 13,
              color: AppColors.lightTitleColor,
              maxLines: 2,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextWidget(
                title: AppStrings.enterOtp,
                fontSize: 15,
                color: AppColors.lightTitleColor),
            SizedBox(
              height: 40.h,
            ),

            ///otp
            OtpPinField(
                otpPinFieldStyle: const OtpPinFieldStyle(
                  defaultFieldBorderColor: AppColors.primaryColor,
                  activeFieldBorderColor: AppColors.primaryColor,
                ),
                otpPinFieldDecoration: OtpPinFieldDecoration.custom,
                key: _otpPinFieldController,
                maxLength: 5,
                onSubmit: (val)async {
                  showLoadingDialog(context); // Show loading dialog
                  await Future.delayed(const Duration(seconds: 3)); // Simulate a 3-second delay
                  Navigator.of(context).pop();
                  Navigator.pushReplacementNamed(
                      context, Routes.chooseAccountScreen);
                },
                onChange: (val) {}),
            SizedBox(
              height: 20.h,
            ),
            // CustomButton(
            //     buttonHeight: 50.h,
            //     textSize: 20,
            //     onPressed: () {
            //       if (_otpPinFieldController.currentState?.ending == true) {
            //         Navigator.pushReplacementNamed(
            //             context, Routes.chooseAccountScreen);
            //       } else {
            //         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //             content: Text('Please enter valid OTP')));
            //       }
            //     },
            //     color: AppColors.greyColor,
            //     title: AppStrings.submit,
            //     textWeight: FontWeight.w600,
            //     showIcon: false),
            Align(
              alignment: Alignment.topLeft,
              child: TextButton(
                  onPressed: () {},
                  child: const CustomTextWidget(
                    title: AppStrings.resendOtp,
                    fontSize: 15,
                    color: AppColors.blueColor,
                    textDecoration: TextDecoration.underline,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
