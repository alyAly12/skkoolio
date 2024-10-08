import 'package:flutter/material.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/fake_percent_model.dart';
import 'package:skkoolio/features/home_feature/presentation/widgets/subject_percent_item.dart';

class SubjectPercentItemList extends StatelessWidget {
  const SubjectPercentItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: FakePercentModel.fakePercentList.length,
        itemBuilder: (context, index) {
      return  SubjectPercentItem(
        percent: FakePercentModel.fakePercentList[index].percent,
        subjectName: FakePercentModel.fakePercentList[index].title,
      );
    });
  }
}
