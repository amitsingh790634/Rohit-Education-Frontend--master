import 'package:flutter/material.dart';
import 'package:rohit_education/View/widget/drawer.dart';

import 'package:rohit_education/constant/constant.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widget/option_widget.dart';

class HomeScren extends StatelessWidget {
  HomeScren({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hi, User 👋",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black,
                  )
                ],
              ),
              Text(
                "Your Learning Recommendaions for Today",
                style: TextStyle(
                    color: Color.fromARGB(255, 43, 41, 41), fontSize: 10.sp),
              )
            ],
          ),
          leading: InkWell(
            onTap: () {
              // Get.back();
              _key.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu_sharp,
              color: Colors.black,
            ),
          ),
        ),
        drawer: OpenDrawer(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            2.h.heightBox,
            Container(
              height: 15.h,
              width: 100.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(
                        3.0,
                        3.0,
                      ),
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ), //BoxShadow
                  ]),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.sp, vertical: 8.sp),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Notice Board",
                            style: text2,
                          ),
                          0.5.heightBox,
                          Text(
                              "Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit, sed diam nonummy"),
                          1.h.heightBox,
                          Text(
                            "Read more",
                          ).text.color(themColor).make(),
                        ],
                      ),
                      Image.asset("lib/assets/images/notesicon.png"),
                    ],
                  )),
            ),
            2.h.heightBox,
            Text(
              "Your Course :",
              style: texthead2,
            ).pSymmetric(h: 20.sp, v: 1.sp),
            Text(
              "Course Name",
              style: texthead2,
            ).pSymmetric(h: 20.sp, v: 0.sp),
            OptionWidget(
              field: "Subject-1",
            ),
            OptionWidget(
              field: "Subject-2",
            ),
            OptionWidget(
              field: "Subject-3",
            ),
            OptionWidget(
              field: "Subject-4",
            ),
            3.h.heightBox,
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Image.asset(
                                    'lib/assets/images/profileimage.png'),
                              ),
                              1.w.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit amet (Topic name)",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("User name")
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                          1.h.heightBox,
                          Container(
                            height: 25.h,
                            width: 100.w,
                            color: Colors.blueGrey,
                          ),
                          1.h.heightBox,
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                                size: 20.sp,
                              ),
                              1.w.widthBox,
                              Text("34"),
                              5.w.widthBox,
                              Icon(
                                Icons.share,
                                color: Colors.grey,
                                size: 20.sp,
                              ),
                              1.w.widthBox,
                              Text("0"),
                              60.w.widthBox,
                              Icon(
                                Icons.bookmark_outline,
                                color: Colors.grey,
                                size: 20.sp,
                              )
                            ],
                          ),
                          1.h.heightBox,
                          Text(
                              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna "),
                          3.h.heightBox,
                        ],
                      ));
                })
          ]),
        ));
  }
}
