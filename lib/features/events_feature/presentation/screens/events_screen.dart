import 'package:flutter/material.dart';
import 'package:skkoolio/features/events_feature/presentation/widgets/events_screen_body.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/common_widgets/drawer_widgets/custom_drawer.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';


class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final eventKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        key: eventKey,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColors.mainColor,
          title:  const CustomTextWidget(
            title:AppStrings.events ,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        body:const EventsScreenBody(),
      ),
    );
  }
}
