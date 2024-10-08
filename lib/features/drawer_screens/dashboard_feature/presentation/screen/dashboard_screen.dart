import 'package:flutter/material.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
            title: AppStrings.studentDashBoard,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),

      ),
    );
  }
}
