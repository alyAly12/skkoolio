class FakeEventModel {
  final String img;
  final String title;
  final String titleBody;

  FakeEventModel(
      {required this.img, required this.title, required this.titleBody});

 static List<FakeEventModel> fakeEventList = [
    FakeEventModel(
        img:'assets/images/anse-sous.png',
        title: "Hall of Fame",
        titleBody: "Safari party is a day of adventure.for everyone, specially our students,with the help of our experienced guides"),
   FakeEventModel(
       img:'assets/images/long-boat.png',
       title: "Safari party",
       titleBody: "Safari party is a day of adventure.for everyone, specially our students,with the help of our experienced guides"),
   FakeEventModel(
       img:'assets/images/marina.png',
       title: "Mothers Day",
       titleBody: "Safari party is a day of adventure.for everyone, specially our students,with the help of our experienced guides"),
   FakeEventModel(
       img:'assets/images/perfect-reflection.png',
       title: "Back To School",
       titleBody: "Safari party is a day of adventure.for everyone, specially our students,with the help of our experienced guides"),
   FakeEventModel(
       img:'assets/images/pura.png',
       title: "Science Fair",
       titleBody: "Event Title Body"),
   FakeEventModel(
       img:'assets/images/spectacular.png',
       title: "International Day",
       titleBody: " International Day is a day of adventure.for everyone, specially our students,with the help of our experienced guides"),
 ];

}






