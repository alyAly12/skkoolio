class FakePercentModel {
  String title;
  int percent;
  FakePercentModel({required this.title, required this.percent});


  static List<FakePercentModel> fakePercentList = [
    FakePercentModel(title: 'Maths', percent: 80),
    FakePercentModel(title: 'English', percent: 70),
    FakePercentModel(title: 'Science', percent: 60),
    FakePercentModel(title: 'History', percent: 50),
    FakePercentModel(title: 'History', percent: 90),
    FakePercentModel(title: 'Geography', percent: 40),
    FakePercentModel(title: 'Social Studies', percent: 30)
  ];
}