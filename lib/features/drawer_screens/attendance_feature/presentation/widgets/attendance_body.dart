import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/utils/app_strings.dart';

import 'attendance_rate_container.dart';

class AttendanceBody extends StatelessWidget {
  const AttendanceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(
            title: AppStrings.todayAttendance,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              const CustomTextWidget(
                title: '${AppStrings.date}: 12/12/2024 ',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.greyColor,
              ),
              SizedBox(
                width: 10.w,
              ),
              const CustomTextWidget(
                title: 'Status: ${AppStrings.present}',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppColors.greyColor,
              ),
              SizedBox(
                width: 5.w,
              ),
              Icon(
                Icons.check_circle_outline_outlined,
                color: AppColors.activeColor,
                size: 20.sp,
              )
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          const CustomTextWidget(
            title: AppStrings.historicalAttendance,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(
            height: 10.h,
          ),
          const AttendanceRateContainer()
        ],
      ),
    );
  }
}


