// import 'package:parveen_frontend/core/package.dart';

// class OtpController extends GetxController {
//   TextEditingController otp = TextEditingController();
// }

// import 'package:parveen_frontend/core/package.dart';

// class OtpController extends GetxController {
//   TextEditingController otp = TextEditingController();
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/Api_Folder/controller/user_sign_up_controller.dart';

import '../api_client/api_client.dart';
import '../api_service/otp_provider.dart';

class OtpController extends GetxController {
  UserSignUpController _userSignUpController = Get.put(UserSignUpController());
  RxString elapsedTime = '02:00'.obs;
  // int _start = 120;
  String result = '';
  GlobalKey<FormState> otpforgetKey = GlobalKey<FormState>();
  String otp = '';

  String? otpValidator(value) {
    if (value.length == 0) {
      return 'Plese enter otp';
    } else {
      return null;
    }
  }

  RxBool isLoading = false.obs;
  var token;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  callOtp() {
    Client client = Client();

    OtpProvider(client: client.init()).VerifyOtp(
      _userSignUpController.phone.text,
      otp,
    );
  }
}
