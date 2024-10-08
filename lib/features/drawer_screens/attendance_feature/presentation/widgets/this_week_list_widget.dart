import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class ThisWeekListWidget extends StatelessWidget {
  const ThisWeekListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index) {
          return const ThisWeekWidget();
        });
  }
}


class ThisWeekWidget extends StatelessWidget {
  const ThisWeekWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTextWidget(
            title: 'Oct 20, 2024 ',
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.greyColor,
          ),
          CustomTextWidget(
            title: AppStrings.present,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.greyColor,
          ),
        ],
      ),
    );
  }
}