import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/user/login.dart';
import 'package:rohit_education/View/login/user/otp_screen.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Api_Folder/controller/user_sign_up_controller.dart';
import '../../widget/common_button.dart';
import '../../widget/google_widget.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  UserSignUpController _userSignUpController = Get.put(UserSignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: BackGroundGradient(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: texthead1,
            ),
            3.h.heightBox,
            TextField(
              controller: _userSignUpController.phone,
              decoration: InputDecoration(
                hintText: "Email/Mobile no. ",
              ),
            ),
            2.h.heightBox,
            TextField(
              controller: _userSignUpController.password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
              ),
            ),
            2.h.heightBox,
            TextField(
              controller: _userSignUpController.password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Verify Password",
              ),
            ),
            5.h.heightBox,
            Commonbutton(
              btnname: "Register",
              onPress: () {
                _userSignUpController.callUserSignUp();
              },
            ),
            3.h.heightBox,
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
            InkWell(
              onTap: () {
                Get.to(Login());
              },
              child: Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an account? ',
                    style: text2,
                    children: [
                      TextSpan(
                        text: 'Log In',
                        style: text1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            5.h.heightBox,
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
