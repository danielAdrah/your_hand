// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';

import '../theme.dart';
import 'service_applier_homePage/service_applier_home.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  List<Widget> screens = <Widget>[
    ServiceApplierPage(),
    Container(
      width: 500,
      height: 500,
      child: Text("d"),
      color: Colors.green,
    ),
    Container(
        width: 500,
        height: 500,
        child: Text("d"),
        color: Colors.purple), //this foe the add button in the middle
    Container(
      width: 500,
      height: 500,
      child: Text("d"),
      color: Colors.blue,
    ),
    Container(
      width: 500,
      height: 500,
      child: Text("d"),
      color: Colors.black,
    ),
  ];
  int selectedTab = 0;
  void goToTab(index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ThemeColor.background,
        bottomNavigationBar: SizedBox(
          height: 95,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            iconSize: 40,
            type: BottomNavigationBarType.fixed,

            unselectedItemColor: ThemeColor.black.withOpacity(0.4),
            // unselectedIconTheme:
            //     IconThemeData(color: ThemeColor.black.withOpacity(0.4)),
            currentIndex: selectedTab,
            onTap: (index) {
              goToTab(index);
            },
            selectedItemColor: ThemeColor.primary,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'حسابي',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'الإشعارات',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 28,
                  backgroundColor: ThemeColor.background,
                  child: Icon(
                    Icons.add,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'خدماتي',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                label: 'طلباتي',
              ),
            ],
          ),
        ),
        // Container(
        //   height: 80,
        //   child: CustomNavigationBar(
        //     currentIndex: selectedIndex,
        //     onTap: onTapped,
        //     iconSize: 35,
        //     bubbleCurve: Curves.linear,
        //     selectedColor: ThemeColor.primary,
        //     strokeColor: ThemeColor.primary,
        //     unSelectedColor: Color(0xffacacac),
        //     scaleFactor: 0.1,
        //     items: [
        //       CustomNavigationBarItem(
        //           icon: Icon(CupertinoIcons.person),
        //           title: Text("حسابي",
        //               style:
        //                   TextStyle(color: ThemeColor.black.withOpacity(0.5)))),
        //       CustomNavigationBarItem(
        //           icon: Icon(CupertinoIcons.person),
        //           title: Text("حسابي",
        //               style:
        //                   TextStyle(color: ThemeColor.black.withOpacity(0.5)))),
        //       CustomNavigationBarItem(
        //         icon:
        //             // Container(
        //             //   width: 30,
        //             //   height: 30,

        //             //   decoration: BoxDecoration(
        //             //       color: ThemeColor.background,
        //             //       shape: BoxShape.circle,
        //             //       border: Border.all(color: Colors.pink)),
        //             //   child: Center(child: Icon(Icons.add, color: Colors.pink)),
        //             // ),
        //             CircleAvatar(
        //           radius: 80,
        //           backgroundColor: ThemeColor.background,
        //           child: Icon(Icons.add, color: Colors.pink, size: 25),
        //         ),
        //       ),
        //       CustomNavigationBarItem(
        //           icon: Icon(CupertinoIcons.person),
        //           title: Text("حسابي",
        //               style:
        //                   TextStyle(color: ThemeColor.black.withOpacity(0.5)))),
        //       CustomNavigationBarItem(
        //           icon: Icon(CupertinoIcons.person),
        //           title: Text("حسابي",
        //               style:
        //                   TextStyle(color: ThemeColor.black.withOpacity(0.5)))),
        //     ],
        //   ),
        // ),

        body: screens[selectedTab]);
  }
}
