import 'package:driving_school/pages/bookingpage.dart';
import 'package:driving_school/pages/instructorpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:driving_school/utils/constant.dart';
import 'package:driving_school/widget/instructorwidget.dart';
import 'package:driving_school/utils/data.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Comsats Driving School',
        style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
            children: [
            Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                  Container(
                    color: Colors.indigo,
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                  ),
                    Positioned(
                      bottom: -60,
                      left: 20,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 120,
                        width: 460,
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                                child: Padding(
                                  padding: kpd20,
                                  child: Image(
                                    image: AssetImage('assets/images/cdslogo.png'),
                                    width: 170,
                                    height: 120,
                                  ),
                                )
                            ),

                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const bookingpage()),
                                  );
                                },
                                child: Text('Book Class')
                            ),
                          ],
                        ),
                      ),
                    ),
          ],
                ),
              ],
            ),
              gaph20,
              gaph20,
              gaph20,
              gaph20,

              Column(
                children: [
                  const Text('Our Instructors',
                  style: kmd),
                  gaph20,

                  instructorcontainer(
                      title: 'M. Saad Shahid',
                      subtitle: 'Toyota Corolla',
                      image: AssetImage('assets/images/mypic.jpg'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const instructordata()),
                      );
                    },
                  ),
                  gaph20,

                  instructorcontainer(
                    title: 'Talha Bin Tahir',
                    subtitle: 'Toyota Vitz',
                    image: AssetImage('assets/images/talhapic.jpeg'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const talhadata()),
                      );
                    },
                  ),
                  gaph20,
                ],
              ),

            ],
          ),
      ),
    );
  }
}









