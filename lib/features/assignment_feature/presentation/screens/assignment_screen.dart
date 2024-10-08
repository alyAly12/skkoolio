import 'package:flutter/material.dart';
import 'package:skkoolio/features/assignment_feature/presentation/widgets/assignment_screen_body.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/common_widgets/drawer_widgets/custom_drawer.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final assignmentKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        key: assignmentKey,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: const CustomTextWidget(
            title: AppStrings.assignments,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: const AssignmentScreenBody(),
      ),
    );
  }
}
