import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/utils/app_colors.dart';


class EventDetailScreen extends StatelessWidget {
  const EventDetailScreen({super.key, required this.img, required this.title, required this.titleBody});
final String img;
final String title;
final String titleBody;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        leading:  IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_new),),
        centerTitle: true,
        backgroundColor: AppColors.mainColor,
        title:   CustomTextWidget(
          title:title ,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      body:Padding(
        padding:  EdgeInsets.symmetric( horizontal: 10.h,vertical: 20.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                clipBehavior:  Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(img,fit:BoxFit.fill,)),
              SizedBox(height: 20.h,),
              CustomTextWidget(title: title, fontSize: 20, fontWeight: FontWeight.w600,),
              SizedBox(height: 20.h,),
              CustomTextWidget(title: titleBody, fontSize: 16, fontWeight: FontWeight.w400,maxLines: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
