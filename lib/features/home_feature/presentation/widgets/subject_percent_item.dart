import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';


class SubjectPercentItem extends StatelessWidget {
  const SubjectPercentItem({super.key, required this.percent, required this.subjectName});
final int percent;
final String subjectName;



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FittedBox(
        child: Row(
          children: [
            CustomTextWidget(title: subjectName,fontSize: 16,fontWeight:FontWeight.w400,color:Colors.black,),
            SizedBox(width: 5.w,),
            LinearPercentIndicator(
              leading: CustomTextWidget(title: '$percent%',fontSize: 16,fontWeight:FontWeight.w400,color:Colors.black,),
              width: MediaQuery.of(context).size.width - 150,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: percent/100,
              center: Text("$percent%",style: const TextStyle(color: Colors.white),),
              progressColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
