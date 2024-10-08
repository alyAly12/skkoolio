import 'package:flutter/material.dart';
import 'package:skkoolio/features/drawer_screens/our_mission_feature/presentation/widgets/our_mission_body.dart';
import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';


class OurMissionScreen extends StatelessWidget {
  const OurMissionScreen({super.key});

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
            title: AppStrings.ourMission,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: const OurMissionBody(),
      ),
    );
  }
}
