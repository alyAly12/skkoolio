import 'package:flutter/material.dart';

import 'message_fake_model.dart';
import 'message_item.dart';

class MessageItemList extends StatelessWidget {
  const MessageItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: MessageFakeModel.getMessageList().length,
        itemBuilder: (context,index){
          return MessageItem(
            senderName: MessageFakeModel.getMessageList()[index].senderName,
            senderSubject: MessageFakeModel.getMessageList()[index].senderSubject,
            sendingTime: MessageFakeModel.getMessageList()[index].sendingTime
          );
        });
  }
}
