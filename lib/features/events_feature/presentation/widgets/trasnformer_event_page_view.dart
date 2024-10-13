import 'dart:math';

import 'package:flutter/material.dart';
import 'package:skkoolio/features/events_feature/presentation/widgets/advanced_event_item.dart';
import 'package:skkoolio/features/events_feature/presentation/widgets/fake_event_model.dart';


class TransformerEventPageView extends StatefulWidget {
  const TransformerEventPageView({super.key});

  @override
  State<TransformerEventPageView> createState() => _TransformerEventPageViewState();
}

class _TransformerEventPageViewState extends State<TransformerEventPageView> {
late  PageController controller;
  var viewPortFraction = 0.8;
  double pageOffset = 0;

  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
      viewportFraction: viewPortFraction,
    )..addListener(() {
      setState(() {
        pageOffset = controller.page!;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return PageView.builder(
      itemCount: FakeEventModel.fakeEventList.length,
        controller: controller,
        itemBuilder: (context, index) {
        double scale = max( viewPortFraction, (1 - (pageOffset - index).abs()) + viewPortFraction);
          return Padding(
            padding:  EdgeInsets.only(
              right:size.width *0.04 ,
              left: size.width *0.04,
              top: 50 - scale * 25,
              bottom: size.width *0.04,
            ),
            child: AdvancedEventItem(
              img: FakeEventModel.fakeEventList[index].img,
              title: FakeEventModel.fakeEventList[index].title,
              titleBody: FakeEventModel.fakeEventList[index].titleBody,
            ),
          );
        }
    );
  }
}
