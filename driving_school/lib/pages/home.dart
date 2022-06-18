import 'package:driving_school/pages/bookingpage.dart';
import 'package:driving_school/pages/instructordata.dart';
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
      body: SafeArea(
          child: Column(
            children: [
            Container(
              color: Colors.indigo,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    SizedBox(
                        child: Padding(
                          padding: kpd20,
                          child: Image(
                            image: AssetImage('assets/images/cdsw.png'),
                            width: 200,
                            height: 150,
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
              gaph20,

              const Text('Our Instructors',
              style: kmd),
              gaph20,

              instructorcontainer(
                  title: 'M. Saad Shahid',
                  subtitle: 'Toyota Corolla',
                  image: AssetImage('assets/images/mypic.jpg'),
              ),
              gaph20,

              instructorcontainer(
                title: 'Talha Bin Tahir',
                subtitle: 'Toyota Vitz',
                image: AssetImage('assets/images/mypic.jpg'),
              ),


            ],
          ),
      ),
    );
  }
}









