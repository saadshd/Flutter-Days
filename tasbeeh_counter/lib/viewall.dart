import 'package:flutter/material.dart';
import 'drawer.dart';
import 'home.dart';
import 'package:page_transition/page_transition.dart';


class viewall extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF2F2F2F),
          elevation: 0,
        ),
        drawer: MyDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(3,0,3,1),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFFCB74),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  height: 80.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3,0,3,1),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFFCB74),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  height: 80.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(3,0,3,1),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      child: home(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFFFCB74),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  height: 80.0,
                ),
              ),
            ),

          ],
        ),

    );
  }
}
