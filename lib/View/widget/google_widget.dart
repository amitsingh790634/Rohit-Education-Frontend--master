import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Googlewidget extends StatelessWidget {
  String image;
  Googlewidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 8.h,
        width: 18.w,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black45,
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 2.0,
          ), //BoxShadow
        ], color: Colors.white, borderRadius: BorderRadius.circular(7.sp)),
        child: Image.asset("$image"));
  }
}
