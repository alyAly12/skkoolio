import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_strings.dart';
import 'assignment_detail_box.dart';

class AssignmentDetailBody extends StatelessWidget {
  const AssignmentDetailBody(
      {super.key,
      required this.title,
      required this.date,
      required this.status});

  final String title;
  final String date;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextWidget(
              title: AppStrings.assignments,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              maxLines: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            AssignmentDetailBox(
              title: title,
              date: date,
              status: status,
            ),
            SizedBox(
              height: 40.h,
            ),
            const CustomTextWidget(
              title: AppStrings.description,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              maxLines: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextWidget(
              title:
                  'Join us for the annual Science Fair showcasing student projects. Join us for the annual Science Fair showcasing student projects.Join us for the annual Science Fair showcasing student projects.Join us for the annual Science Fair showcasing student projects.Join us for the annual Science Fair showcasing student',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              maxLines: 15,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextWidget(
              title: AppStrings.notes,
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              maxLines: 1,
            ),
            SizedBox(
              height: 20.h,
            ),
            const CustomTextWidget(
              title:
              'Join us for the annual Science Fair showcasing student projects. Join us for the annual Science Fair showcasing student projects.Join us for the annual Science Fair showcasing student projects.Join us for the annual Science Fair showcasing student projects.Join us for the annual Science Fair showcasing student',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              maxLines: 15,
            ),
          ],
        ),
      ),
    );
  }
}
