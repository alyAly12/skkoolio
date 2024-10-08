import 'package:flutter/material.dart';

import '../widgets/choose_account_screen_body.dart';

class ChooseAccountScreen extends StatelessWidget {
  const ChooseAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ChooseAccountScreenBody(),
      ),
    );
  }
}
