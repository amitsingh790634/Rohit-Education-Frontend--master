import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rohit_education/Api_Folder/controller/user_sign_up_controller.dart';

import '../api_client/api_client.dart';
import '../api_service/registration_page_provider.dart';
import '../api_service/user_sign_up_provider.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> register = GlobalKey();
  TextEditingController first_name = TextEditingController();
  TextEditingController last_name = TextEditingController();
  TextEditingController email = TextEditingController();
  UserSignUpController _userSignUpController = Get.put(UserSignUpController());

  var writeotp = '';

  callRegister() {
    Client client = Client();

    RegisterProvider(client: client.init()).RegisterUser(
      first_name.text,
      last_name.text,
      email.text,
      _userSignUpController.phone.text,
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
