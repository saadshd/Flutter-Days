import 'package:driving_school/pages/reviewpage.dart';
import 'package:driving_school/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:driving_school/utils/constant.dart';
import 'bookingpage.dart';

class instructordata extends StatefulWidget {
  const instructordata({Key? key}) : super(key: key);

  @override
  State<instructordata> createState() => _instructordataState();
}

class _instructordataState extends State<instructordata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Instructor"),
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
        ),

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/mypic.jpg'),
                      ),
                      gaph10,
                      Text('M. Saad Shahid',
                      style: kmd),
                    ],
                  ),
              ],
            ),
            gaph20,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Car: Toyota Yaris'),
                    gaph10,
                    Text('Car Number: MN-22-1558'),
                    gaph10,
                    Text('Timing: 05:00 PM - 09:00 PM'),
                  ],
                ),
              ],
            ),
            gaph20,

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const bookingpage()),
                  );
                },
                child: Text('Book Class')
            ),
            gaph10,
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const reviewpage()),
                  );
                },
                child: Text('Add Review'),
            ),


          ],
        ),
      ),


    );
  }
}
