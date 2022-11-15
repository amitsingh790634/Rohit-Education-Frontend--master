import 'package:flutter/material.dart';
import 'package:rohit_education/View/student_pannel/explore/explore.dart';
import 'package:rohit_education/View/student_pannel/home_Screen.dart';
import 'package:rohit_education/View/student_pannel/mylist/mylist.dart';
import 'package:rohit_education/View/student_pannel/notification/notification.dart';
import 'package:rohit_education/View/student_pannel/profile/profile.dart';
import 'package:rohit_education/constant/constant.dart';

class Bottom extends StatefulWidget {
  int? index;
  Bottom({Key? key, this.index}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;
  List pageData = [
    HomeScren(),
    Explore(),
    MyList(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pageData[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 15,
        unselectedItemColor: Colors.black,
        unselectedFontSize: 13,
        selectedItemColor: themColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
              backgroundColor: Color(0xff868686)),
          BottomNavigationBarItem(
              icon: InkWell(
                child: Icon(Icons.explore_outlined),
              ),
              label: "Explore",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.list,
              ),
              label: "My List",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notification',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
              backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
