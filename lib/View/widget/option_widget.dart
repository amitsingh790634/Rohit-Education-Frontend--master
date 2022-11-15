import 'package:flutter/material.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OptionWidget extends StatelessWidget {
  String field;
  OptionWidget({Key? key, required this.field}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 6.h,
          width: 90.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.sp),
              border: Border.all(color: Colors.black)),
          child: Center(child: Text("$field")),
        )
      ],
    ).pSymmetric(h: 20.sp, v: 5.sp);
  }
}
