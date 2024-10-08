import 'package:skkoolio/core/utils/app_strings.dart';

class BehaviorFakeModel {
  final String title;
  final String description;
  final String date;

  BehaviorFakeModel({required this.title, required this.description, required this.date});

  static List<BehaviorFakeModel> getBehaviorList() {
    return <BehaviorFakeModel>[
      BehaviorFakeModel(title: AppStrings.positive, description: 'Helped a classmate with homework.', date: '11/10/2024'),
      BehaviorFakeModel(title: AppStrings.needsImprovement, description: 'Make jokes in class', date: '15/12/2024'),
      BehaviorFakeModel(title: AppStrings.negative, description: 'Disrupted class with loud talking.', date: 'Yesterday'),
      BehaviorFakeModel(title: AppStrings.needsImprovement, description: 'Late to class without a valid reason.', date: 'Last week'),
      BehaviorFakeModel(title: AppStrings.positive, description: 'Displayed excellent teamwork in group project.', date: 'Last month'),
    ];
  }
}