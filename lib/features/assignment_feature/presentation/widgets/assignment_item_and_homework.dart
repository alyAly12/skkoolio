import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/utils/app_strings.dart';

class AssignmentItemAndHomeWork extends StatelessWidget {
  const AssignmentItemAndHomeWork(
      {super.key,
      required this.title,
      required this.date,
      required this.status, this.onPressed});

  final String title;
  final String date;
  final String status;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: AppColors.primaryColor
          ),
            shape: BoxShape.rectangle,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                title: title,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'Due $date',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.greyColor,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'status $status',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: AppColors.greyColor,
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.mainColor,
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                color: AppColors.lightTitleColor, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: onPressed,
                      child: const FittedBox(
                        child: CustomTextWidget(
                          title: AppStrings.viewDetails,
                          fontSize: 15,
                          color: AppColors.lightTitleColor,
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
