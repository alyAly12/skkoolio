
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.controller, required this.hintText, this.obsecureText, this.suffixIcon, this.textInputAction, required this.validator, this.onChanged});
  final TextEditingController controller;

  final String hintText;
  final bool? obsecureText;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final Function(String?) validator;
  final Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child: TextFormField(
        cursorColor: AppColors.mainColor,
        controller: controller,

        textInputAction: textInputAction,
        keyboardType: TextInputType.phone,
        decoration:  InputDecoration(
          prefixIcon: const Icon(Icons.phone_outlined, color: AppColors.greyColor,),
          fillColor: AppColors.backGroundColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.lightTitleColor,
            fontSize: 15
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 7),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightTitleColor),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mainColor),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: AppColors.deepRed)),
          errorStyle: const TextStyle(fontSize: 14, color: AppColors.deepRed),
          focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              borderSide: BorderSide(color: AppColors.deepRed)),
          suffixIcon:suffixIcon ,
        ),
        obscureText: obsecureText ??false,
        style:const TextStyle(
          decoration: TextDecoration.none,
            decorationThickness: 0,
            color: AppColors.greyColor,
            fontSize: 15
        ),
        validator: (value){
          return validator(value);
        },
        onChanged: (value){},
        // onFieldSubmitted: onFieldSubmitted,
        // onSaved: onSaved,
      ),
    );
  }
}
