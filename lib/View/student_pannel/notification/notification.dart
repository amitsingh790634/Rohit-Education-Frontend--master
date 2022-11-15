import 'package:flutter/material.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Notifications",
          style: blacktext,
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: BackGroundGradient(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: blacktext2,
            ),
            2.h.heightBox,
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 7.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                          color: themColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5.sp),
                          image: DecorationImage(
                              image:
                                  AssetImage("lib/assets/images/icon1.png"))),
                    ),
                    Positioned(
                      left: 30.sp,
                      child: Container(
                        height: 2.h,
                        width: 4.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    )
                  ],
                ),
                5.w.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 71.w,
                      child: Text(
                        "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                        style: grawertext,
                      ),
                    ),
                    Text(
                      "Just now",
                      style: text3,
                    )
                  ],
                )
              ],
            ),
            2.h.heightBox,
            Divider(),
            2.h.heightBox,
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 7.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                          color: themColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5.sp),
                          image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/images/icon3.png",
                            ),
                          )),
                    ),
                    Positioned(
                      left: 30.sp,
                      child: Container(
                        height: 2.h,
                        width: 4.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    )
                  ],
                ),
                5.w.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Transaction Information",
                      style: blacktext2,
                    ),
                    Container(
                      width: 71.w,
                      child: Text(
                        "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                        style: grawertext,
                      ),
                    ),
                    Text(
                      "3 hours ago",
                      style: text3,
                    )
                  ],
                )
              ],
            ),
            3.h.heightBox,
            Container(
              height: 0.5.h,
              width: 100.w,
              color: Colors.white54,
            ),
            2.h.heightBox,
            Text(
              "12 JUN , 2022",
              style: blacktext2,
            ),
            2.h.heightBox,
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 7.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                          color: themColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5.sp),
                          image: DecorationImage(
                              image:
                                  AssetImage("lib/assets/images/icon1.png"))),
                    ),
                    Positioned(
                      left: 30.sp,
                      child: Container(
                        height: 2.h,
                        width: 4.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    )
                  ],
                ),
                5.w.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 71.w,
                      child: Text(
                        "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                        style: grawertext,
                      ),
                    ),
                    Text(
                      "Just now",
                      style: text3,
                    )
                  ],
                )
              ],
            ),
            2.h.heightBox,
            Divider(),
            2.h.heightBox,
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 7.h,
                      width: 14.w,
                      decoration: BoxDecoration(
                          color: themColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(5.sp),
                          image: DecorationImage(
                            image: AssetImage(
                              "lib/assets/images/icon3.png",
                            ),
                          )),
                    ),
                    Positioned(
                      left: 30.sp,
                      child: Container(
                        height: 2.h,
                        width: 4.w,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10.sp),
                        ),
                      ),
                    )
                  ],
                ),
                5.w.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Transaction Information",
                      style: blacktext2,
                    ),
                    Container(
                      width: 71.w,
                      child: Text(
                        "Lorem ipsum You have a (subject name) class at today 9:00 AM",
                        style: grawertext,
                      ),
                    ),
                    Text(
                      "3 hours ago",
                      style: text3,
                    )
                  ],
                )
              ],
            ),
            3.h.heightBox,
            Container(
              height: 0.5.h,
              width: 100.w,
              color: Colors.white54,
            )
          ],
        ).pSymmetric(h: 15.sp, v: 5.sp),
      )),
    );
  }
}
