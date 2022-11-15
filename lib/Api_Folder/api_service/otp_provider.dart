import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart' as g;
import 'package:rohit_education/View/login/user/registration.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../sharedpreferences/shared_preferences.dart';

class OtpProvider {
  Dio client;
  OtpProvider({required this.client});

  var jsonResponse;
  var logToken;
  var user;
  var name;

  VerifyOtp(String phone, String otp) async {
    try {
      // CommanLoader.loader();
      var data = {
        "Userdata": phone,
        "otp": otp,
      };
      print(data);
      Response r = await client.post("/auth/verify", data: data);

      if (r.statusCode == 200) {
        print(r.data);
        print('Otp sucessfully');

        g.Get.to(() => Registration());

        var data = jsonDecode(jsonResponse);
        logToken = data['token'];
        // user = data['user']['_id'];
        // print(user);
        // name = data['user']['name'];
        print(name);
        SharedToken().save_user(user, name);

        // SharedPreferences prefsToken = await SharedPreferences.getInstance();
        // prefsToken.setString("token", data["token"]);
        SharedToken().token_save(logToken);
        // final box = GetStorage();
        // box.write('phone', data['phone']);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setBool("isLoggedIn", true);
        print("prefs is " + prefs.toString());

        g.Get.snackbar("Welcome", "Account Created Succesfully",
            icon: Icon(
              Icons.phone,
              color: Colors.green,
            ));
      } else {
        // CommanLoader.showErrorDialog(description: r.data['error']);
      }
    } on DioError catch (e) {
      // CommanLoader.hideLoading();
      // CommanLoader.message(e.response!.data['msg']);
      // log(e.response!.data.toString());
      // CommanLoader.hideLoading();
    }
  }
}
