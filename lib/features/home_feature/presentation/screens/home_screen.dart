import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/common_widgets/drawer_widgets/custom_drawer.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/home_body.dart';

import '../../../../core/utils/app_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.studentName});
final String studentName;
  @override
  Widget build(BuildContext context) {
    void _changeLanguage() {
      if (context.locale ==  const Locale('en')) {
        context.setLocale(const Locale('ar'));
      } else {
        context.setLocale(const Locale('en'));
      }
    }
    final homeKey = GlobalKey<ScaffoldState>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        key: homeKey,
        drawer: const CustomDrawer(),
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          title:  const CustomTextWidget(
            title:AppStrings.studentDashBoard ,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          actions: [
            ElevatedButton(onPressed: (){
              _changeLanguage();
            }, child:const Icon(Icons.language_outlined) ),
            const SizedBox(width: 10,)
          ],
        ),
        body:  HomeBody(studentName: studentName,),
      ),
    );
  }
}
