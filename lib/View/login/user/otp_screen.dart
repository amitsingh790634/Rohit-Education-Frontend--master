import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:rohit_education/Api_Folder/controller/user_sign_up_controller.dart';
import 'package:rohit_education/View/login/user/forget_password.dart';
import 'package:rohit_education/View/login/user/otp/otp_input.dart';
import 'package:rohit_education/View/login/user/registration.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../Api_Folder/controller/otp_controller.dart';
import '../../widget/common_button.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);

  final OtpController _otpController = Get.put(OtpController());
  final UserSignUpController _userSignUpController =
      Get.put(UserSignUpController());

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
        child: BackGroundGradient(
            child: Column(
          children: [
            Text(
              "Enter confirmation code",
              style: blacktext,
            ),
            3.h.heightBox,
            Text(
              "Enter the 4 digit one time password ",
              style: blacktext1,
            ),
            Text(
              "we have sent you on ",
              style: blacktext1,
            ),
            3.h.heightBox,
            Text(
              "+91-0123456789",
              style: blacktext1,
            ),
            Text(
              "&",
              style: blacktext1,
            ),
            Text(
              "userid@gmail.com",
              style: blacktext1,
            ),
            5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OTPTextField(
                    // controller: otpController,
                    length: 6,
                    otpFieldStyle: OtpFieldStyle(
                        borderColor: Colors.orange,
                        focusBorderColor: Colors.orange),
                    width: MediaQuery.of(context).size.width,
                    textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    // fieldWidth: 30,
                    // fieldStyle: FieldStyle.box,
                    outlineBorderRadius: 30,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(fontSize: 17),
                    onChanged: (pin) {
                      _otpController.otp = pin;
                      // print("Changed: " + pin);
                    },
                    onCompleted: (pin) {
                      _otpController.otp = pin;
                      print("Completed: " + _otpController.otp.toString());
                    }),
              ],
            ),
            5.h.heightBox,
            Text(
              "Resend",
              style: text1,
            ),
            5.h.heightBox,
            Commonbutton(
              btnname: "Verify",
              onPress: () {
                _otpController.callOtp();
              },
            ),
          ],
        ).pOnly(
          top: 15.h,
        )),
      ),
    );
  }
}
