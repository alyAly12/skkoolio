import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../core/routing/routes.dart';


class AdvancedEventItem extends StatelessWidget {
  const AdvancedEventItem({super.key, required this.img, required this.title, required this.titleBody});
  final String img;
  final String title;
  final String titleBody;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, Routes.eventDetailScreen, arguments:  {'img':img,'title':title,'titleBody':titleBody});
      },
      child: Material(
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(img,width:MediaQuery.of(context).size.width ,fit: BoxFit.cover,),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.only(top: 15,bottom: 30,left: 20,right: 20),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.5),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextWidget(title: title,fontWeight: FontWeight.w600,fontSize: 24,color:Colors.white,maxLines: 2,),
                        SizedBox(height: 10.h,),
                        CustomTextWidget(title: titleBody,fontWeight: FontWeight.w600,fontSize: 20,color:Colors.white,maxLines: 2,),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
