import 'package:flutter/material.dart';
import 'package:skkoolio/core/routing/routes.dart';
import 'package:skkoolio/features/assignment_feature/presentation/widgets/assignment_item_and_homework.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/fake_assignment_model.dart';

class AssignmentAndHomeworkList extends StatelessWidget {
  const AssignmentAndHomeworkList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: FakeAssignmentModel.fakeAssignmentList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        mainAxisSpacing: 10,
          crossAxisSpacing: 10
        ),
        itemBuilder: (context, index) {
          return AssignmentItemAndHomeWork(
              title: FakeAssignmentModel
                  .fakeAssignmentList[index].subjectAssignment,
              date: FakeAssignmentModel.fakeAssignmentList[index].date,
              status: FakeAssignmentModel.fakeAssignmentList[index].status,
          onPressed: (){
                Navigator.pushNamed(context, Routes.assignmentDetailsScreen,
                    arguments:{
                      'title': FakeAssignmentModel
                          .fakeAssignmentList[index].subjectAssignment,
                      'date': FakeAssignmentModel
                          .fakeAssignmentList[index].date,
                      'status': FakeAssignmentModel
                          .fakeAssignmentList[index].status
                    }


                );
          },
          );
        });
  }
}
