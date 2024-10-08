import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:skkoolio/core/utils/assets_manager.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return  AlertDialog(
       backgroundColor: Colors.transparent,
       elevation: 0,
       content: Center(
         child: Lottie.asset(AssetsManager.loading1),
       ),
     );
  }
}


Future<void> showLoadingDialog(BuildContext context) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) => const LoadingWidget(),
  );
}