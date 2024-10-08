import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';

import '../../../../core/utils/app_colors.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem(
      {super.key,
      required this.notificationTitle,
      required this.notificationDate,
      required this.notificationBody});

  final String notificationTitle;
  final String notificationDate;
  final String notificationBody;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.greyColor,
                radius: 18,
                child: Center(
                    child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                )),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                    title: notificationTitle,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  CustomTextWidget(
                    title: notificationBody,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.greyColor,
                  ),
                ],
              ),
              const Spacer(),
             Column(
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 CustomTextWidget(
                   title: notificationDate,
                   fontSize: 16,
                   fontWeight: FontWeight.w400,
                   color: AppColors.greyColor,
                 ),
                 const SizedBox(height: 10,),
                 const CircleAvatar(
                   backgroundColor: AppColors.activeColor,
                   radius: 5,
                 )
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}
