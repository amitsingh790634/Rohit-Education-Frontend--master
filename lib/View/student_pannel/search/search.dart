import 'package:flutter/material.dart';
import 'package:rohit_education/constant/backgroundgradient.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        extendBodyBehindAppBar: true,
        body: BackGroundGradient(
          child: Column(
            children: [
              10.h.heightBox,
              Container(
                  height: 6.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black45,
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                      ]),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 20.sp,
                        color: Colors.grey,
                      ).pSymmetric(
                        h: 10.sp,
                      ),
                      Container(
                        width: 30.w,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search here...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.mic,
                        size: 20.sp,
                        color: Colors.grey,
                      ).pSymmetric(
                        h: 10.sp,
                      ),
                    ],
                  )).px12(),
            ],
          ),
        ));
  }
}
