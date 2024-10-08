import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/drawer_widgets/custom_drawer.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/features/notification_feature/presentation/widgets/notification_screen_body.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_strings.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationKey = GlobalKey<ScaffoldState>();
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        key: notificationKey,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          centerTitle: true,
          title: const CustomTextWidget(
            title: AppStrings.notifications,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body: const NotificationScreenBody(),
      ),
    );
  }
}
