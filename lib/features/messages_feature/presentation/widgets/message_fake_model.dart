class MessageFakeModel {
  String senderName;
  String senderSubject;
  String sendingTime;

  MessageFakeModel({
    required this.senderName,
    required this.senderSubject,
    required this.sendingTime,
  });

  static List<MessageFakeModel> getMessageList() {
    return <MessageFakeModel>[
      MessageFakeModel(
        senderName: 'Jane Copper',
        senderSubject: 'Math Teacher',
        sendingTime: '11:10',
      ),
      MessageFakeModel(
        senderName: 'Kristin Copper',
        senderSubject: 'English Teacher',
        sendingTime: '12:18',
      ),
      MessageFakeModel(
        senderName: 'Sara zed',
        senderSubject: 'History Teacher',
        sendingTime: '1d',
      ),
      MessageFakeModel(
        senderName: 'Adel hady',
        senderSubject: 'Physics Teacher',
        sendingTime: '2d',
      ),
      MessageFakeModel(
        senderName: 'Mohamed wakil',
        senderSubject: 'Arabic Teacher',
        sendingTime: '3d',
      ),
    ];
  }
}
