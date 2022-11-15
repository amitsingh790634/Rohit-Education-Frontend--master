import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/user/create_new_password.dart';
import 'package:rohit_education/View/widget/common_button.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BackGroundGradient(
            child: Column(
          children: [
            20.h.heightBox,
            Image.asset("lib/assets/images/emailimage.png"),
            2.h.heightBox,
            Text(
              "Check Your Email",
              style: blacktext,
            ),
            2.h.heightBox,
            Text(
                "We have sent a password recover\n          instruction to your email."),
            5.h.heightBox,
            Commonbutton(
              btnname: 'Open email app',
              onPress: () {
                Get.to(CreateNewPassword());
              },
            ),
            3.h.heightBox,
            Text("Skip, I’ll confirm later"),
            11.h.heightBox,
            Text("Didn’t receive the email? Check your spam filter"),
            RichText(
              text: TextSpan(
                text: 'or',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: '  try another email address',
                    style: TextStyle(color: themColor),
                  ),
                ],
              ),
            ),
          ],
        ).pSymmetric(v: 13.h, h: 4.h)),
      ),
    );
  }
}
