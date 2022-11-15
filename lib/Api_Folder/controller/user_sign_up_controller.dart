import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../api_client/api_client.dart';
import '../api_service/user_sign_up_provider.dart';

class UserSignUpController extends GetxController {
  GlobalKey<FormState> register = GlobalKey();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  var writeotp = '';

  callUserSignUp() {
    Client client = Client();

    UserSignUpProvider(client: client.init()).User(
      phone.text,
      password.text,
    );
  }

  @override
  void onInit() {}

  RxBool isLoading = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    // isLoading = false as RxBool;
  }
}
