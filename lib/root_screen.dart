import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/features/assignment_feature/presentation/screens/assignment_screen.dart';
import 'package:skkoolio/features/home_feature/presentation/screens/home_screen.dart';
import 'package:skkoolio/features/messages_feature/presentation/screens/messages_screen.dart';
import 'package:skkoolio/features/notification_feature/presentation/screens/notification_screen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';


class RootScreen extends StatefulWidget {
  const RootScreen({super.key, required this.studentName});
final String studentName;
  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {


  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      HomeScreen(studentName: widget.studentName,),
      const NotificationScreen(),
      const MessagesScreen(),
      const AssignmentScreen()
    ];
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller:pageController ,
        children: pages,
      ),
      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: AppColors.mainColor,
        waterDropColor: AppColors.primaryColor,
        bottomPadding: 8,
          barItems:  <BarItem>[
            BarItem(
              filledIcon: Ionicons.person_sharp,
              outlinedIcon: Ionicons.person_outline,
            ),
            BarItem(
                filledIcon: Ionicons.notifications_sharp,
                outlinedIcon: Ionicons.notifications_outline),
            BarItem(
              filledIcon: Ionicons.mail_open_sharp,
              outlinedIcon: Ionicons.mail_unread_outline,
            ),
            BarItem(
              filledIcon: Ionicons.book_sharp,
              outlinedIcon: Ionicons.book_outline,
            ),
          ],
          selectedIndex: selectedIndex,
          onItemSelected: (int index){
            setState(() {
              selectedIndex=index;
              pageController.jumpToPage(selectedIndex);
            });
          }
      ),
    );
  }
}
