import 'package:flutter/material.dart';
import 'package:rohit_education/View/widget/option_widget.dart';
import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          5.h.heightBox,
          OptionWidget(
            field: "BBA in Aviation",
          ),
          OptionWidget(
            field: "B.Tech Aerospace Engineering",
          ),
          OptionWidget(
            field: "BBA - Aviation Operation",
          ),
          OptionWidget(
            field: "Air Hostess",
          ),
          OptionWidget(
            field: "Aeronautical Engineering",
          ),
          3.h.heightBox,
          Container(
            height: 25.h,
            width: 100.w,
            color: Colors.blueGrey,
            child: Center(
                child: Text(
              "Introduction",
              style: blacktext,
            )),
          ),
          2.h.heightBox,
          Text(
            "Continue Learning",
            style: blacktext2,
          ),
          1.5.h.heightBox,
          SizedBox(
            height: 20.h,
            child: ListView.builder(
                itemCount: 6,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15.h,
                            width: 50.w,
                            color: Colors.blueGrey,
                          ),
                          1.h.heightBox,
                          Text("Topic Headline"),
                        ],
                      ),
                      3.w.widthBox,
                    ],
                  );
                }),
          ),
          2.h.heightBox,
          Text(
            "Recommended",
            style: blacktext2,
          ),
          1.5.h.heightBox,
          SizedBox(
            height: 20.h,
            child: ListView.builder(
                itemCount: 6,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15.h,
                            width: 50.w,
                            color: Colors.blueGrey,
                          ),
                          1.h.heightBox,
                          Text("Topic Headline"),
                        ],
                      ),
                      3.w.widthBox,
                    ],
                  );
                }),
          ),
          2.h.heightBox,
          Text(
            "Trending Now",
            style: blacktext2,
          ),
          1.5.h.heightBox,
          SizedBox(
            height: 20.h,
            child: ListView.builder(
                itemCount: 6,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15.h,
                            width: 50.w,
                            color: Colors.blueGrey,
                          ),
                          1.h.heightBox,
                          Text("Topic Headline"),
                        ],
                      ),
                      3.w.widthBox,
                    ],
                  );
                }),
          ),
          2.h.heightBox,
          Text(
            "New Release",
            style: blacktext2,
          ),
          1.5.h.heightBox,
          SizedBox(
            height: 20.h,
            child: ListView.builder(
                itemCount: 6,
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 15.h,
                            width: 50.w,
                            color: Colors.blueGrey,
                          ),
                          1.h.heightBox,
                          Text("Topic Headline"),
                        ],
                      ),
                      3.w.widthBox,
                    ],
                  );
                }),
          )
        ]).pSymmetric(h: 5.sp, v: 5.sp),
      ),
    );
  }
}
