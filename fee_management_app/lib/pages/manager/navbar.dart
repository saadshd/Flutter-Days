import 'package:fee_management_app/pages/manager/manager_home.dart';
import 'package:fee_management_app/pages/manager/manager_report.dart';
import 'package:fee_management_app/pages/manager/student.dart';
import 'package:fee_management_app/pages/manager/teacher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../utils/constant.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);


  @override
  State<NavBar> createState() => _NavBarState();
}


class _NavBarState extends State<NavBar> {
  int index = 0;
  final screens = [
    ManagerHome(),
    Student(),
    Teacher(),
    ManagerReport(),
    Center(child: Text('Profile', style: kmd)),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.black12,
        ),
        child: NavigationBar(
          backgroundColor: Colors.grey.shade200,
          // labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          // animationDuration: Duration(seconds: 2),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.school_outlined),
              label: 'Student',
              selectedIcon: Icon(Icons.school, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.group_outlined),
              label: 'Teacher',
              selectedIcon: Icon(Icons.group, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.copy_outlined),
              label: 'Reports',
              selectedIcon: Icon(Icons.copy, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.person_outlined),
              label: 'Profile',
              selectedIcon: Icon(Icons.person, color: Colors.black),
            ),
          ],
        ),
      ),


    );
  }
}

