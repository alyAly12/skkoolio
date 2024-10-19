import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:skkoolio/core/common_widgets/custom_text_widget.dart';


class SettingScreenBody extends StatefulWidget {
  const SettingScreenBody({super.key});

  @override
  State<SettingScreenBody> createState() => _SettingScreenBodyState();
}

class _SettingScreenBodyState extends State<SettingScreenBody> {
  void _changeLanguage() {
    if (context.locale ==  const Locale('en')) {
      context.setLocale(const Locale('ar'));
    } else {
      context.setLocale(const Locale('en'));
    }
  }


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextWidget(title: 'General', fontSize: 20, fontWeight: FontWeight.w600,),
          const SizedBox(height: 15,),
          ListTile(
            onTap: (){
              setState(() {
                _changeLanguage();
              });

            },
            title:  CustomTextWidget(title:context.locale.languageCode, fontSize: 16, fontWeight: FontWeight.w400,),
            trailing: const Icon(Icons.language_outlined),
          )
        ],
      ),
    );
  }
}


