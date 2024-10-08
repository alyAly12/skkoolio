import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skkoolio/core/utils/app_colors.dart';

class CustomOtpRow extends StatelessWidget {
  const CustomOtpRow({super.key, required this.formKey, required this.controller1, required this.controller2, required this.controller3, required this.controller4, required this.controller5, required this.first, required this.second, required this.third, required this.fourth, required this.fifth});

  final GlobalKey formKey;
  final TextEditingController controller1 ;
  final TextEditingController controller2 ;
  final TextEditingController controller3 ;
  final TextEditingController controller4 ;
  final TextEditingController controller5 ;
  final FocusNode first, second, third, fourth, fifth;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 68.h,
              width: 64.w,
              child: TextFormField(
                focusNode: first,
                 controller: controller1,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusNode().requestFocus(second);
                  }
                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter OTP';
                  }
                  return null;
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 68.h,
              width: 64.w,
              child: TextFormField(
                focusNode: second,
                controller: controller2,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 2) {
                    FocusNode().requestFocus(third);
                  }
                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter OTP';
                  }
                  return null;
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 68.h,
              width: 64.w,
              child: TextFormField(
                focusNode: third,
                controller: controller3,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 3) {
                    FocusNode().requestFocus(fourth);
                  }
                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter OTP';
                  }
                  return null;
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 68.h,
              width: 64.w,
              child: TextFormField(
                focusNode: fourth,
                controller: controller4,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 4) {
                    FocusNode().requestFocus(fifth);
                  }
                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter OTP';
                  }
                  return null;
                },
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(
              height: 68.h,
              width: 64.w,
              child: TextFormField(
                focusNode: fifth,
                controller: controller5,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.zero,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      width: 2,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 5) {
                    FocusNode().canRequestFocus;
                  }
                },
                validator: (value){
                  if(value!.isEmpty){
                    return 'Enter OTP';
                  }
                  return null;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
