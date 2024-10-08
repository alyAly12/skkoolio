import 'package:flutter/material.dart';
import 'package:skkoolio/features/assignment_feature/presentation/widgets/assignment_detail_body.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';


class AssignmentsDetails extends StatelessWidget {
  const AssignmentsDetails({super.key, required this.title, required this.date, required this.status});

  final String title;
  final String date;
  final String status;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios_new)),
          centerTitle: true,
          backgroundColor: AppColors.mainColor,
          title: const CustomTextWidget(
            title: AppStrings.assignmentDetails,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: AssignmentDetailBody(title: title, date: date, status: status,),
      ),
    );
  }
}
