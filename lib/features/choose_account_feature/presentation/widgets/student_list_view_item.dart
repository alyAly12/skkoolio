import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/utils/app_strings.dart';

class StudentListViewItem extends StatelessWidget {
  const StudentListViewItem(
      {super.key,
      required this.studentName,
      required this.gradeType,
      required this.gradeYear,
      required this.onPressed});

  final String studentName;
  final String gradeType;
  final String gradeYear;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color(0xffefefbb),
            Color(0xffd4d3dd),
          ])),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 20.h,
              backgroundColor: AppColors.greyColor,
              child: const Center(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextWidget(
                  title: studentName,
                  fontSize: 15,
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextWidget(
                    title: gradeType,
                    color: AppColors.lightTitleColor,
                    fontSize: 13),
                const SizedBox(
                  height: 5,
                ),
                CustomTextWidget(
                    title: gradeYear,
                    color: AppColors.lightTitleColor,
                    fontSize: 15),
              ],
            ),
            const Spacer(),
            FittedBox(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.greyColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
                  onPressed: onPressed,
                  label: const CustomTextWidget(title: AppStrings.selectStudent,fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white,),
                  icon: const Icon(Icons.check_circle_outline_outlined,color: Colors.white,)),
            )
          ],
        ),
      ),
    );
  }
}
