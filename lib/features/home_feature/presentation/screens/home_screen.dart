import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/common_widgets/drawer_widgets/custom_drawer.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/home_body.dart';

import '../../../../core/utils/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        key: homeKey,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title: const CustomTextWidget(
            title: AppStrings.studentDashBoard,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          actions:const [
            CircleAvatar(
              backgroundColor: AppColors.greyColor,
              radius: 18,
              child: Center(child: Icon(Icons.person,color: Colors.white,size: 30,)),
            ),
            SizedBox(width: 10,)
          ],
        ),
        body: const HomeBody(),
      ),
    );
  }
}
