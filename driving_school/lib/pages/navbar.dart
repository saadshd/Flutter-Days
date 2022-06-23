import 'package:driving_school/pages/home.dart';
import 'package:driving_school/pages/mybookingpage.dart';
import 'package:driving_school/pages/packagespage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:driving_school/utils/constant.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);


  @override
  State<navbar> createState() => _navbarState();
}


class _navbarState extends State<navbar> {
  int index = 0;
  final screens = [
    home(),
    packagespage(),
    mybookingdata(),
    Center(child: Text('More', style: klg)),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: screens[index],

      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: kblue,
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
              icon: Icon(Icons.wallet_outlined),
              label: 'Packages',
              selectedIcon: Icon(Icons.wallet, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.calendar_month_outlined),
              label: 'My Booking',
              selectedIcon: Icon(Icons.calendar_month, color: Colors.black),
            ),
            NavigationDestination(
              tooltip: "",
              icon: Icon(Icons.more_horiz_outlined),
              label: 'More',
              selectedIcon: Icon(Icons.more_horiz, color: Colors.black),
            ),
          ],
        ),
      ),


    );
  }
}

