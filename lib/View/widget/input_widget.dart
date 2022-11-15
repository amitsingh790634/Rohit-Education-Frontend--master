import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class InputWidget extends StatelessWidget {
  String? hinttext;

  bool? secure;
  InputWidget({
    Key? key,
    this.hinttext,
    this.secure,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      width: 80.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(
                5.0,
                5.0,
              ),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ), //BoxShadow
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18),
        child: TextField(
          obscureText: secure!,
          decoration: InputDecoration(
            hintText: '$hinttext',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              color: Colors.black),
        ),
      ),
    );
  }
}
