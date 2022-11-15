import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackGroundGradient extends StatelessWidget {
  var child;

  BackGroundGradient({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      height: 100.h,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffFFE8E3),
            Color(0xffACAFC8),
          ],
        ),
      ),
      child: child,
    );
  }
}
