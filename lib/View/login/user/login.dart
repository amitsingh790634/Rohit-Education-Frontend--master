import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/user/forget_password.dart';
import 'package:rohit_education/View/login/user/otp_screen.dart';
import 'package:rohit_education/View/login/user/signup.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../constant/backgroundgradient.dart';
import '../../../constant/constant.dart';
import '../../widget/common_button.dart';
import '../../widget/google_widget.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: BackGroundGradient(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: texthead1,
            ),
            3.h.heightBox,
            const TextField(
              decoration: InputDecoration(
                hintText: "Email/Mobile no. ",
              ),
            ),
            2.h.heightBox,
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            2.h.heightBox,
            InkWell(
              onTap: () {
                Get.to(ForgetPassword());
              },
              child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "Forgot password?",
                    style: text3,
                  )),
            ),
            5.h.heightBox,
            Commonbutton(
              btnname: "Login",
              onPress: () {
                Get.to(OtpScreen());
              },
            ),
            6.h.heightBox,
            Row(
              children: [
                Container(
                  height: 0.1.h,
                  width: 37.w,
                  color: Colors.white,
                ),
                2.w.widthBox,
                const Text("Or"),
                2.w.widthBox,
                Container(
                  height: 0.1.h,
                  width: 37.w,
                  color: Colors.white,
                ),
              ],
            ),
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Googlewidget(
                  image: "lib/assets/images/googleicon.png",
                ),
                10.w.widthBox,
                Googlewidget(
                  image: "lib/assets/images/facebookicon.png",
                ),
              ],
            ),
            4.h.heightBox,
            Center(
              child: InkWell(
                onTap: () {
                  Get.to(Signup());
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: text2,
                    children: [
                      TextSpan(
                        text: ' Create One',
                        style: text1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            6.h.heightBox,
            Center(
                child: Text(
              "By creating an account, you are agreeing to our",
            )),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Terms of Service',
                  style: bottomtext,
                  children: [
                    TextSpan(
                      text: '  and  ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: bottomtext,
                    ),
                  ],
                ),
              ),
            )
          ],
        ).pSymmetric(v: 13.h, h: 4.h)),
      ),
    );
  }
}
