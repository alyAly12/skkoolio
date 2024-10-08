import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/features/drawer_screens/student_behavior_feature/presentation/widgets/behavior_report_item_list.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_strings.dart';

class StudentBehaviorBody extends StatelessWidget {
  const StudentBehaviorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 40.h, left: 10.w, right: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(
            title: AppStrings.behaviorReports,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 30.h,),
          const Expanded(child: BehaviorReportItemList())

        ],
      ),
    );
  }
}
