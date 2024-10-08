import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:skkoolio/features/drawer_screens/attendance_feature/presentation/widgets/this_week_list_widget.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';


class AttendanceRateContainer extends StatelessWidget {
  const AttendanceRateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/2,
      child: ContainedTabBarView(
        tabs: const [
          CustomTextWidget(
            title: AppStrings.thisWeek,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          CustomTextWidget(
              title: AppStrings.thisMonth,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white),
          CustomTextWidget(
              title: AppStrings.thisSemester,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white),
        ],
        tabBarProperties: TabBarProperties(
          indicatorColor: Colors.white,
          indicatorWeight: 4,
          margin: const EdgeInsets.only(bottom: 8.0),
          background: Container(
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 0.5,
                  blurRadius: 2,
                  offset: const Offset(1, -1),
                ),
              ],
            ),
          ),
        ),
        views: const [ThisWeekListWidget(), ThisWeekListWidget(), ThisWeekListWidget()],
        onChange: (index) => print(index),
      ),
    );
  }
}



