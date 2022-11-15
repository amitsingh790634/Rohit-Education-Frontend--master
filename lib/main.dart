import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/onboarding/onboarding.dart';
import 'package:rohit_education/View/login/onboarding/splash_screen.dart';
import 'package:rohit_education/View/student_pannel/explore/explore.dart';
import 'package:rohit_education/View/student_pannel/home_Screen.dart';
import 'package:rohit_education/View/student_pannel/mylist/mylist.dart';
import 'package:rohit_education/View/student_pannel/notification/notification.dart';
import 'package:rohit_education/View/student_pannel/profile/my_profile.dart';
import 'package:rohit_education/View/student_pannel/profile/profile.dart';
import 'package:rohit_education/View/student_pannel/search/search.dart';
import 'package:rohit_education/View/widget/bottom.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: SplashScreen(),
        );
      },
    );
  }
}
