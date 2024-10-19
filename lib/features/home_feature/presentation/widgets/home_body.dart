import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/assignment_item_list.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/subject_percent_item_list.dart';

import '../../../../core/utils/app_colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key, required this.studentName});
final String studentName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 10.w, right: 10.w),

      child:  CustomScrollView(
        slivers: [
           SliverToBoxAdapter(
            child: CustomTextWidget(
              title: 'progressOverview'.tr(),
              fontWeight: FontWeight.w600,
            ),
          ),
          SliverToBoxAdapter(
            child:
            SizedBox(
              height: 20.h,
            ),
          ),
          SliverToBoxAdapter(
            child:Row(
              children: [
                 const CircleAvatar(
                  backgroundColor: AppColors.greyColor,
                  radius: 22,
                  child: Center(
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 30,
                      )),
                ),
                SizedBox(
                  width: 15.w,
                ),
                RichText(
                    text:  TextSpan(children: [
                       TextSpan(
                          text: 'student'.tr(),
                          style: const TextStyle(
                              color: AppColors.greyColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      const WidgetSpan(child: SizedBox(width: 5,)),
                      TextSpan(
                          text:  studentName,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ])),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child:
            SizedBox(
              height: 20.h,
            ),
          ),
          const SubjectPercentItemList(),
          SliverToBoxAdapter(
            child:
            SizedBox(
              height: 20.h,
            ),
          ),
           SliverToBoxAdapter(
            child: CustomTextWidget(
              title: 'recentAssignments'.tr(),
              fontWeight: FontWeight.w600,
            ),
          ),
          SliverToBoxAdapter(
            child:
            SizedBox(
              height: 30.h,
            ),
          ),
          const AssignmentItemList(),
        ],
      )
    );
  }
}
