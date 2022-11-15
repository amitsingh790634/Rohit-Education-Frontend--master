import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:rohit_education/View/login/user/otp_screen.dart';
import 'package:rohit_education/View/widget/bottom.dart';

class RegisterProvider {
  Dio client;
  RegisterProvider({required this.client});

  RegisterUser(String f_name, String l_name, String email, String phone) async {
    Map body = {
      "first_Name": f_name,
      "last_Name": l_name,
      "Email": email,
      "mobile_Number": phone,
    };
    try {
      print(body);

      Response response = await client.post('auth/signupuser', data: body);

      if (response.statusCode == 200) {
        print('hellooooooo');
        print(response.data);

        g.Get.to(() => Bottom());

        //print(response.data);

      } else {
        // return Future.error(response.data["error"]);
      }
    } on DioError catch (e) {
      // print(e.response!.data);
      return Future.error(e.message);
    }
  }
}
