import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/common_widgets/gradient_box_border.dart';
import 'package:skkoolio/core/utils/app_colors.dart';

import '../../../../core/routing/routes.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.img, required this.title, required this.titleBody});
final String img;
final String title;
final String titleBody;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.eventDetailScreen, arguments:  {'img':img,'title':title,'titleBody':titleBody});
      },
      child: Container(
        constraints: const BoxConstraints(
          maxHeight: double.infinity
        ),
        decoration: BoxDecoration(
          color: AppColors.customKeyboardColor,
          border: const GradientBoxBorder(
              gradient:LinearGradient(
                  colors: [
                    Color(0xffefefbb),
                    Color(0xffd4d3dd),
                  ]),
          width: 5
          ),

          borderRadius: BorderRadius.circular(30),

        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Image.asset(img,fit: BoxFit.fill,),
              ),
               SizedBox(height: 10.h,),
               CustomTextWidget(title: title,fontWeight: FontWeight.w600,fontSize: 16,color:Colors.black,maxLines: 2,),
               SizedBox(height: 10.h,),
               CustomTextWidget(title: titleBody,fontWeight: FontWeight.w600,fontSize: 16,color:AppColors.greyColor,maxLines: 2,),
            ],
          ),
        ),
      ),
    );
  }
}
