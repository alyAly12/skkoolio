class FakeAssignmentModel {
  final String subjectAssignment;
  final String date;
  final String status;

  FakeAssignmentModel({
    required this.subjectAssignment,
    required this.date,
    required this.status,
  });

  static List<FakeAssignmentModel> fakeAssignmentList = [
    FakeAssignmentModel(
      subjectAssignment: 'Math Homework',
      date: 'Oct 14',
      status: 'Pending',
    ),
    FakeAssignmentModel(
      subjectAssignment: 'English Essay',
      date: 'Due: Oct 18',
      status: 'Completed',
    ),
    FakeAssignmentModel(
      subjectAssignment: 'Science Project',
      date: 'Oct 20',
      status: 'Pending',
    ),
    FakeAssignmentModel(
      subjectAssignment: 'History Report',
      date: 'Oct 20',
      status: 'Completed',
    ),
    FakeAssignmentModel(
      subjectAssignment: 'Social Studies Report',
      date: 'Oct 20',
      status: 'Completed',
    ),
    FakeAssignmentModel(
      subjectAssignment: 'Arabic Homework',
      date: 'Oct 20',
      status: 'Completed',
    ),

    FakeAssignmentModel(
      subjectAssignment: 'French Homework',
      date: 'Oct 20',
      status: 'Completed',
    ),

  ];
}
