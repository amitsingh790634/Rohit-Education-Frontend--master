import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Myprofile extends StatefulWidget {
  Myprofile({Key? key}) : super(key: key);

  @override
  State<Myprofile> createState() => _MyprofileState();
}

class _MyprofileState extends State<Myprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ).onTap(() {
          Get.back();
        }),
      ),
      extendBodyBehindAppBar: true,
      body: BackGroundGradient(
          child: SafeArea(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 45,
              child: CircleAvatar(
                backgroundColor: Colors.greenAccent[100],
                radius: 45,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                      'lib/assets/images/profileimage.png'), //NetworkImage
                  radius: 45,
                ), //CircleAvatar
              ), //CircleAvatar
            ),
            3.h.heightBox,
            Text(
              "Overview",
              style: blacktext,
            ),
            4.h.heightBox,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Student Name"),
                    1.h.heightBox,
                    Text("Email Address"),
                    1.h.heightBox,
                    Text("Contact No."),
                    1.h.heightBox,
                    Text("Permanent Address"),
                    1.h.heightBox,
                    Text("Residential Address"),
                  ],
                ),
                10.w.widthBox,
                Column(
                  children: [
                    Text("-"),
                    1.h.heightBox,
                    Text("-"),
                    1.h.heightBox,
                    Text("-"),
                    1.h.heightBox,
                    Text("-"),
                    1.h.heightBox,
                    Text("-"),
                  ],
                ),
                10.w.widthBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User Name"),
                    1.h.heightBox,
                    Text("userid@gmail.com"),
                    1.h.heightBox,
                    Text("+91 0123456789"),
                    1.h.heightBox,
                    Text("Full Address"),
                    1.h.heightBox,
                    Text("Full Addresss"),
                  ],
                ),
              ],
            ).px32()
          ],
        ),
      )),
    );
  }
}
