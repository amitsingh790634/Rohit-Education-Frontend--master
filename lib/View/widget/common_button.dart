import 'package:flutter/material.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';

class Commonbutton extends StatelessWidget {
  String btnname;
  VoidCallback? onPress;
  Commonbutton({Key? key, required this.btnname, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Center(
        child: Container(
          height: 6.h,
          width: 80.w,
          decoration: BoxDecoration(
              color: themColor, borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              '$btnname',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
