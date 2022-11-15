import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/user/check_email.dart';
import 'package:rohit_education/View/widget/common_button.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: BackGroundGradient(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Reset Password",
            style: blacktext,
          ),
          2.h.heightBox,
          Text(
              "Enter the email/mobile no. associated with your account and we’ll send an email/SMS with instruction to reset your password"),
          4.h.heightBox,
          Text(
            "Email address",
            style: blacktext1,
          ),
          2.h.heightBox,
          Container(
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
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'userid@gmail.com',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Colors.black),
              ),
            ),
          ),
          5.h.heightBox,
          Commonbutton(
            btnname: "Send Instruction",
            onPress: () {
              Get.to(const CheckEmail());
            },
          ),
        ],
      ).pSymmetric(v: 13.h, h: 4.h)),
    );
  }
}
