class FakeEventModel {
  final String img;
  final String title;
  final String titleBody;

  FakeEventModel(
      {required this.img, required this.title, required this.titleBody});

 static List<FakeEventModel> fakeEventList = [
    FakeEventModel(
        img:'assets/images/anse-sous.png',
        title: "Event Title",
        titleBody: "Event Title Body"),
   FakeEventModel(
       img:'assets/images/long-boat.png',
       title: "Event Title",
       titleBody: "Event Title Body"),
   FakeEventModel(
       img:'assets/images/marina.png',
       title: "Event Title",
       titleBody: "Event Title Body"),
   FakeEventModel(
       img:'assets/images/perfect-reflection.png',
       title: "Event Title",
       titleBody: "Event Title Body"),
   FakeEventModel(
       img:'assets/images/pura.png',
       title: "Event Title",
       titleBody: "Event Title Body"),
   FakeEventModel(
       img:'assets/images/spectacular.png',
       title: "Event Title",
       titleBody: "Event Title Body"),
 ];

}






