class NotificationFakeModel {
  String title;
  String date;
  String body;

  NotificationFakeModel({required this.title, required this.date, required this.body});

  static List<NotificationFakeModel> getNotificationList() {
    return <NotificationFakeModel>[
      NotificationFakeModel(title: 'Notification Title', date: '10m', body: 'body 1'),
      NotificationFakeModel(title: 'Notification Title', date: '2h', body: 'body 2'),
      NotificationFakeModel(title: 'Notification Title', date: 'Yesterday', body: 'body 3'),
      NotificationFakeModel(title: 'Notification Title', date: '3h', body: 'body 4'),
      NotificationFakeModel(title: 'Notification Title', date: '5h', body: 'body 5'),
      NotificationFakeModel(title: 'Notification Title', date: 'Yesterday', body: 'body 6'),
      NotificationFakeModel(title: 'Notification Title', date: '5h', body: 'body 7'),
      NotificationFakeModel(title: 'Notification Title', date: 'Yesterday', body: 'body 8'),
      NotificationFakeModel(title: 'Notification Title', date: '10m', body: 'body 1'),
      NotificationFakeModel(title: 'Notification Title', date: '2h', body: 'body 2'),
      NotificationFakeModel(title: 'Notification Title', date: 'Yesterday', body: 'body 3'),
      NotificationFakeModel(title: 'Notification Title', date: '3h', body: 'body 4'),
      NotificationFakeModel(title: 'Notification Title', date: '5h', body: 'body 5'),
      NotificationFakeModel(title: 'Notification Title', date: 'Yesterday', body: 'body 6'),
      NotificationFakeModel(title: 'Notification Title', date: '5h', body: 'body 7'),
      NotificationFakeModel(title: 'Notification Title', date: 'Yesterday', body: 'body 8'),

    ];
}
}