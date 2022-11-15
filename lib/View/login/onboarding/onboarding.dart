import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rohit_education/View/login/user/signup.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'onboarding_model.dart';

class Onbording extends StatefulWidget {
  const Onbording({Key? key}) : super(key: key);

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currtpage = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackGroundGradient(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currtpage = index;
                });
              },
              itemBuilder: (_, i) {
                return Container(
                  child: Padding(
                    padding: EdgeInsets.all(20.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          contents[i].title!,
                          style: texthead,
                        ),
                        10.h.heightBox,
                        Image.asset(contents[i].image!),
                        3.h.heightBox,
                        Text(
                          contents[i].discription!,
                          textAlign: TextAlign.center,
                          style: text2,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    contents.length, (index) => buildDot(index, context))),
          ),
          Container(
            height: 48,
            width: 335,
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
                color: themColor, borderRadius: BorderRadius.circular(20)),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              onPressed: () {
                Get.to(Signup());
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => CreateAccount()));
              },
              child: Text(
                'Log In / Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currtpage == index ? 10 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currtpage == index ? themColor : Color(0xff979797),
      ),
    );
  }
}
