import 'package:flutter/material.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';

class OtpInput extends StatelessWidget {
  OtpInput({
    Key? key,
    // required this.controller,
    required this.autoFocus,
    // required this.validator
  }) : super(key: key);
  final bool autoFocus;
  // final TextEditingController controller;
  // final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 10.h,
        width: 10.w,
        child: Container(
          height: 1.h,
          width: 13.w,
         
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                // border: InputBorder.none,
                // focusedBorder: InputBorder.none,
                // enabledBorder: InputBorder.none,
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                errorBorder: InputBorder.none,
                hintText: '0',
                hintStyle: TextStyle(fontSize: 20.0, color: Colors.black),
                counterText: '',
                focusColor: themColor,
              ),
              autofocus: autoFocus,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              // controller: controller,
              // validator: validator,
              maxLength: 1,
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
