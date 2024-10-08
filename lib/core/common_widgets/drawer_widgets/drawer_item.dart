import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../custom_text_widget.dart';
import 'drawer_model.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.drawerItemModel });
  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.img),
      title: CustomTextWidget(title: drawerItemModel.title,fontSize: 16,fontWeight:FontWeight.w400,color:Colors.black,),
    );
  }
}