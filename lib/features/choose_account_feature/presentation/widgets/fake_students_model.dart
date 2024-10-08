class FakeStudentsModel {
  final String name;
  final String gradeType;
  final String? highGradeLevel;

  FakeStudentsModel(this.highGradeLevel,
      {required this.name, required this.gradeType});

  static List<FakeStudentsModel> fakeStudents = [
    FakeStudentsModel("Primary ", name: "Hassan", gradeType: "Second Year"),
    FakeStudentsModel("High ", name: "pedro", gradeType: "First Year"),
    FakeStudentsModel("Elementary ", name: "Aly", gradeType: "Third Year"),
    FakeStudentsModel("Primary", name: "Magdy", gradeType: "Fourth Year"),

  ];
}
