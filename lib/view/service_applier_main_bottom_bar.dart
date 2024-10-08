// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../theme.dart';
import 'service_applier_homePage/service_applier_home.dart';
import 'service_applier_notification/notification&message.dart';

class MainBottomBar extends StatefulWidget {
  const MainBottomBar({super.key});

  @override
  State<MainBottomBar> createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  List<Widget> screens = <Widget>[
    Container(
      width: 500,
      height: 500,
      child: Text("d"),
    ),
    NotificationAndMessage(),
    Container(
        width: 500,
        height: 500,
        child: Text("d"),
        ), //this foe the add button in the middle

    ServiceApplierPage(),
    Container(
      width: 500,
      height: 500,
      child: Text("d"),
    
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
        body: screens[selectedTab]);
  }
}
