import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/bg.jpeg"),
                      fit: BoxFit.fill,
                  alignment: Alignment.center),
                ),
              // decoration: BoxDecoration(
              //   color: Color(0xFFFFCB74),
              // ),
                child: Stack(children: <Widget>[
                  Positioned(
                      bottom: 12.0,
                      left: 16.0,
                      child: Text("Tasbeeh Counter",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500)
                      )
                  ),
                ]
                )
            ),
            ListTile(
              leading:
              Icon(Icons.home),
              title: const Text('Home'),


              // onTap: () {
              //   Navigator.push(
              //     context,
              //     PageTransition(
              //       type: PageTransitionType.leftToRightWithFade,
              //       child: Home(),
              //     ),
              //   );
              // },
            ),
            ListTile(
              leading:
              Icon(Icons.contact_page),
              title: const Text('Contact Us',

              ),
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     PageTransition(
              //       type: PageTransitionType.leftToRightWithFade,
              //       child: Contact(),
              //     ),
              //   );             },
            ),

          ],
        ),
      ),
    );
  }
}
