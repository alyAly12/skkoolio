import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_colors.dart';
import 'package:skkoolio/core/utils/app_strings.dart';

import 'notification_item_list.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextWidget(title:AppStrings.recently,fontWeight: FontWeight.w300,fontSize: 18,color: AppColors.greyColor,),
          SizedBox(height: 20),
          Expanded(
            child: NotificationItemList(),
          ),
        ],
      ),
    );
  }
}
