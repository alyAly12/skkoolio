import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';
import 'package:skkoolio/core/utils/app_strings.dart';
import 'package:skkoolio/core/utils/assets_manager.dart';
import 'package:skkoolio/features/choose_account_feature/presentation/widgets/student_list_view.dart';

class ChooseAccountScreenBody extends StatelessWidget {
  const ChooseAccountScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
              height: 200.h,
              width: 200.w,
              child: SvgPicture.asset(AssetsManager.chooseProfile)),
          SizedBox(
            height: 10.h,
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: CustomTextWidget(
              title: AppStrings.chooseAccount,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Expanded(child: StudentListView())
        ],
      ),
    );
  }
}
