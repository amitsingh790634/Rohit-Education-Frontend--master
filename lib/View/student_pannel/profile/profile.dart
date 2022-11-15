import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/student_pannel/profile/my_profile.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundGradient(
          child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              3.h.heightBox,
              Center(
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
                    1.h.heightBox,
                    Text(
                      "User name",
                      style: blacktext2,
                    ),
                    Text(
                      "userid@gmail.com",
                      style: TextStyle(color: Colors.grey),
                    ),
                    0.5.h.heightBox,
                    Text(
                      "+91 0123456789",
                      style: TextStyle(color: Colors.grey),
                    ),
                    2.h.heightBox,
                    Container(
                      height: 5.h,
                      width: 30.w,
                      decoration: BoxDecoration(color: themColor),
                      child: Center(
                          child: Text(
                        "Edit",
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
                      )),
                    ),
                    3.h.heightBox,
                    Divider(),
                  ],
                ),
              ),
              Container(
                child: ListTile(
                    leading: Text("My Profile", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {
                Get.to(Myprofile());
              }),
              Container(
                child: ListTile(
                    leading: Text("My Course", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Assignment", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Apply Leave", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Help & Support", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Settings", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("About Us", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Privacy Policy", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Terms & Conditions", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
              Container(
                child: ListTile(
                    leading: Text("Logout", style: grawertext),
                    trailing: Icon(Icons.arrow_forward_ios_sharp)),
              ).onTap(() {}),
            ],
          ).pSymmetric(h: 8.sp, v: 5.sp),
        ),
      )),
    );
  }
}
