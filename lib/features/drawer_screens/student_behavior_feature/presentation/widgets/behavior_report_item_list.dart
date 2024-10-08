import 'package:flutter/material.dart';
import 'package:skkoolio/features/drawer_screens/student_behavior_feature/presentation/widgets/behavior_fake_model.dart';

import 'behavior_report_item.dart';

class BehaviorReportItemList extends StatelessWidget {
  const BehaviorReportItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: BehaviorFakeModel.getBehaviorList().length,
        itemBuilder: (context, index) {
          return BehaviorReportItem(
            behaviorRate: BehaviorFakeModel.getBehaviorList()[index].title,
            date: BehaviorFakeModel.getBehaviorList()[index].date,
            behaviorNote: BehaviorFakeModel.getBehaviorList()[index].description,
          );
        });
  }
}
