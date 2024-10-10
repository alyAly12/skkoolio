import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skkoolio/core/common_widgets/custom_dialog.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/common_widgets/drawer_widgets/drawer_item.dart';
import '../../routing/routes.dart';
import '../../utils/assets_manager.dart';
import 'drawer_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  static List<DrawerItemModel> items = [
    DrawerItemModel(
        img: AssetsManager.dashboard,
        title: 'Messages',
        Routes.messagesScreen),
    DrawerItemModel(
        img: AssetsManager.chart, title: 'Attendance', Routes.attendanceScreen),
    DrawerItemModel(
        img: AssetsManager.graph,
        title: 'Student Behavior',
        Routes.studentBehaviorScreen),
    DrawerItemModel(
        img: AssetsManager.settings, title: 'Settings', Routes.settingsScreen),
    DrawerItemModel(
        img: AssetsManager.convertCard, title: 'Our Mission', Routes.ourMissionScreen),
    DrawerItemModel(
        img: AssetsManager.convertCard, title: 'Student', Routes.chooseAccountScreen),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.mainColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.red,
                )),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, items[index].page!);
                        },
                        child: DrawerItem(
                          drawerItemModel: items[index],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: (){
                showCustomDialog(
                    context, title: 'Logout',
                    content: 'Are you sure you want to logout?',
                    yesText: 'Yes, Logout',
                    noText: 'No, Cancel',
                    onYesPressed: (){
                      Navigator.pushReplacementNamed(context,Routes.loginScreen);
                    },
                    onNoPressed: (){
                      Navigator.of(context).pop();
                    }
                );
              },
              child: ListTile(
                leading: SvgPicture.asset(AssetsManager.logOut),
                title: const CustomTextWidget(
                  title: 'Logout',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomTextWidget(
              title: 'Skkoolio v1.0 2024 @copyright',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.lightTitleColor,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
