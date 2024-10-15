import 'package:flutter/material.dart';

import 'event_item.dart';
import 'fake_event_model.dart';

class EventItemList extends StatelessWidget {
  const EventItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      child: ListView.builder(
        itemCount: FakeEventModel.fakeEventList.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.only(top: 15),
              child: EventItem(
                img: FakeEventModel.fakeEventList[index].img,
                titleBody: FakeEventModel.fakeEventList[index].titleBody ,
                title: FakeEventModel.fakeEventList[index].title,
              ),
            );
          }),
    );
  }
}
