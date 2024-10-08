import 'package:flutter/material.dart';
import 'package:skkoolio/features/messages_feature/presentation/widgets/messages_screen_body.dart';
import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/common_widgets/drawer_widgets/custom_drawer.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final messageKey = GlobalKey<ScaffoldState>();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.mainColor,
          key: messageKey,
          drawer: const CustomDrawer(),
          appBar: AppBar(
            backgroundColor: AppColors.mainColor,
            title: const CustomTextWidget(
              title: AppStrings.messages,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          body: const MessagesScreenBody(),
        ),
      ),
    );
  }
}
