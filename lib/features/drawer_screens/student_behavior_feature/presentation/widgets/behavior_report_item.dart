import 'package:flutter/material.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';

class BehaviorReportItem extends StatelessWidget {
  const BehaviorReportItem(
      {super.key,
      required this.behaviorRate,
      required this.date,
      required this.behaviorNote});

  final String behaviorRate;
  final String date;
  final String behaviorNote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(
                title: behaviorRate,
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'Due: $date',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.greyColor,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextWidget(
                title: 'Desc: $behaviorNote',
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: AppColors.greyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
