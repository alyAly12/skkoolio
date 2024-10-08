import 'package:flutter/material.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/fake_assignment_model.dart';

import 'assignment_item.dart';


class AssignmentItemList extends StatelessWidget {
  const AssignmentItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: FakeAssignmentModel.fakeAssignmentList.length,
        itemBuilder: (context, index) {
      return  AssignmentItem(
        title: FakeAssignmentModel.fakeAssignmentList[index].subjectAssignment,
        date: FakeAssignmentModel.fakeAssignmentList[index].date,
        status: FakeAssignmentModel.fakeAssignmentList[index].status,
      );
    });
  }
}
