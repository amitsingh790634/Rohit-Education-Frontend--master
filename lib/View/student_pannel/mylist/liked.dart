import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Liked extends StatelessWidget {
  const Liked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE3E3E3),
      body: SingleChildScrollView(
        child: Column(children: [
          ListView.builder(
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 100.w,
                      decoration: BoxDecoration(
                        // color: Colors.grey[300],
                        color: Colors.white,
                        // borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          2.h.heightBox,
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
                              55.w.widthBox,
                              Icon(
                                Icons.bookmark_outline,
                                color: Colors.grey,
                                size: 20.sp,
                              )
                            ],
                          ).p12(),
                          1.h.heightBox,
                          Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna ")
                              .p12(),
                          1.h.heightBox,
                        ],
                      )),
                );
              }),
        ]),
      ),
    );
  }
}
