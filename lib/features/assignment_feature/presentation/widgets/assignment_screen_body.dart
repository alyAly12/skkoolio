import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_strings.dart';
import 'package:skkoolio/features/assignment_feature/presentation/widgets/assignment_and_homework_list.dart';

class AssignmentScreenBody extends StatelessWidget {
  const AssignmentScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.h),
      child: const Column(
        children: [
          CustomTextWidget(
            title: AppStrings.assignmentAndHomework,
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            maxLines: 1,
          ),
          SizedBox(height: 20,),
          Expanded(child: AssignmentAndHomeworkList())
        ],
      ),
    );
  }
}
