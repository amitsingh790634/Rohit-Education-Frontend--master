import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart' as g;
import 'package:rohit_education/View/login/user/otp_screen.dart';

class UserSignUpProvider {
  Dio client;
  UserSignUpProvider({required this.client});

  User(
    String phone,
    String password,
  ) async {
    Map body = {
      "Userdata": phone,
      "password": password,
    };
    try {
      print(body);

      Response response = await client.post('/auth', data: body);

      if (response.statusCode == 200) {
        print('hellooooooo');
        print(response.data);

        g.Get.to(() => OtpScreen());

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
