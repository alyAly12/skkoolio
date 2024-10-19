import 'package:flutter/material.dart';
import 'package:skkoolio/features/drawer_screens/settings_feature/presentation/widgets/setting_screen_body.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

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
            title: AppStrings.settings,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: const SettingScreenBody(),
      ),
    );
  }
}
