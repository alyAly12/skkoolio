import 'package:flutter/material.dart';

import 'event_item.dart';

class EventItemList extends StatelessWidget {
  const EventItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1 / 2.1,
              mainAxisExtent: 360),
          itemBuilder: (context, index) {
            return  EventItem(
              img: 'assets/images/690920df-3e82-4c9b-b83b-67280189c35a.png',title: 'FALL FESTIVAL PARTY',
              titleBody:
                  'Save the Date!Our eagerly anticipated "FALL FESTIVAL COSTUME PARTY" is coming on Thursday, October 26th! ?Invitations will be exclusively available at school. For more details, please give us a call at 03 3835380, extension 123. Don\'t miss out on the fun!',
            );
          }),
    );
  }
}
