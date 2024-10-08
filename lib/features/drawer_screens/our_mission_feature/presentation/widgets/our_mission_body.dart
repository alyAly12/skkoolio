import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/common_widgets/custom_text_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_strings.dart';


class OurMissionBody extends StatelessWidget {
  const OurMissionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, left: 10.w, right: 10.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomTextWidget(
              title: AppStrings.ourMission,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20.h,),
            const CustomTextWidget(title: 'At Skkoolio, we are committed to providing a nurturing and stimulating environment that fosters academic excellence, personal growth, and a strong sense of community. We believe in empowering our students to become critical thinkers,problem-solvers,and compassionate individuals who are well-prepared to contribute positively to society.',
            maxLines: 10,
            fontSize: 18,
            color: AppColors.greyColor,
            fontWeight: FontWeight.w500,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20.h,),
            const CustomTextWidget(
              title: AppStrings.aboutUs,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 20.h,),
            const CustomTextWidget(title: 'Skkoolio is an educational platform dedicated to providing a comprehensive education that equips students with the knowledge, skills, and values necessary for success in the 21st century. Our curriculum is designed to promote intellectual curiosity, creativity, and a love of learning. We offer a wide range of academic programs, extracurricular activities, and support services to meet the diverse needs of our students.',
              maxLines: 10,
              fontSize: 18,
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
