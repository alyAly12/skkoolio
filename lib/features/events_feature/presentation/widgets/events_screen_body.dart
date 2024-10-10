import 'package:flutter/material.dart';
import 'package:skkoolio/features/events_feature/presentation/widgets/even_item_list.dart';

class EventsScreenBody extends StatelessWidget {
  const EventsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: EventItemList())
      ],
    );
  }
}
