import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skkoolio/core/common_widgets/custom_button.dart';
import 'package:skkoolio/core/common_widgets/custom_text_form_field.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/common_widgets/loading_widget.dart';
import 'package:skkoolio/core/routing/routes.dart';
import 'package:skkoolio/core/utils/app_strings.dart';
import 'package:skkoolio/core/utils/assets_manager.dart';

import '../../../../core/helper/app_regex.dart';
import '../../../../core/utils/app_colors.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  final TextEditingController phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Color buttonColor = AppColors.greyColor;
  @override
  void initState() {
    super.initState();
    phoneController.addListener(_updateButtonColor);
  }
  void _updateButtonColor() {
    final textLength = phoneController.text.length;
    setState(() {
      buttonColor = textLength == 11 ? AppColors.primaryColor : AppColors.greyColor;
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    phoneController.removeListener(_updateButtonColor);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SvgPicture.asset(AssetsManager.loginImg),
              SizedBox(
                height: 15.h,
              ),
              const CustomTextWidget(
                title: AppStrings.welcome,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(
                height: 5.h,
              ),
              const CustomTextWidget(
                title: AppStrings.enterYourNum,
                fontSize: 13,
                color: AppColors.lightTitleColor,
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomTextFormField(
                controller: phoneController,
                hintText: 'Enter Mobile Number',
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isPhoneNumberValid(value)) {
                    return 'Please Enter Valid Phone Number';
                  }
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                  buttonHeight: 50.h,
                  textSize: 20,
                  onPressed: () async{

                    if (formKey.currentState!.validate()) {
                      showLoadingDialog(context); // Show loading dialog
                      await Future.delayed(const Duration(seconds: 3)); // Simulate a 3-second delay
                      Navigator.of(context).pop();
                      Navigator.pushReplacementNamed(context, Routes.otpScreen);
                    }
                  },
                  color: buttonColor,
                  title: AppStrings.login,
                  textWeight: FontWeight.w600,
                  showIcon: false),
              SizedBox(
                height: 10.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
