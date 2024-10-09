import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/features/choose_account_feature/presentation/widgets/fake_students_model.dart';
import 'package:skkoolio/features/choose_account_feature/presentation/widgets/student_list_view_item.dart';

import '../../../../core/routing/routes.dart';

class StudentListView extends StatelessWidget {
  const StudentListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: FakeStudentsModel.fakeStudents.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(top: 5.h),
            child: StudentListViewItem(
                studentName: FakeStudentsModel.fakeStudents[index].name,
                gradeType: FakeStudentsModel.fakeStudents[index].gradeType,
                gradeYear: FakeStudentsModel.fakeStudents[index].highGradeLevel!,
                onPressed: (){
                  Navigator.popAndPushNamed(context, Routes.rootScreen,arguments: {
                    'studentName': FakeStudentsModel.fakeStudents[index].name,
                  });
                }
            ),
          );
        }
    );
  }
}
