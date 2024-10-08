import 'package:flutter/material.dart';
import 'package:skkoolio/features/notification_feature/presentation/widgets/notificatio_fake_model.dart';

import 'notification_item.dart';

class NotificationItemList extends StatelessWidget {
  const NotificationItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: NotificationFakeModel.getNotificationList().length,
        itemBuilder: (context, index) {
          return NotificationItem(
            notificationTitle:NotificationFakeModel.getNotificationList()[index].title,
            notificationDate: NotificationFakeModel.getNotificationList()[index].date,
            notificationBody: NotificationFakeModel.getNotificationList()[index].body,
          );
        });
  }
}
