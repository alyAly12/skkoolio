import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';

void showCustomDialog(BuildContext context,
    {required String title,
    required String content,
    required String yesText,
    required String noText,
    required Function onYesPressed,
    required Function onNoPressed}) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.mainColor,
        title: CustomTextWidget(
            title: title,
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Colors.black),
        content: CustomTextWidget(
            title: content,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.greyColor),
        actions: [
          MaterialButton(
            onPressed: () {
              onYesPressed();
            },
            child: CustomTextWidget(
                title: yesText,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.deepRed),
          ),
          MaterialButton(
            onPressed: () {
              onNoPressed();
            },
            child: CustomTextWidget(
                title: noText,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.activeColor),
          ),
        ],
      );
    },
  );
}
