import 'package:flutter/material.dart';
import 'package:skkoolio/features/drawer_screens/attendance_feature/presentation/widgets/attendance_body.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          backgroundColor: AppColors.mainColor,
          title: const CustomTextWidget(
            title: AppStrings.attendance,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: const AttendanceBody(),
      ),
    );
  }
}
