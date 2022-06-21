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
                    Text('Car: Toyota Corolla'),
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

            gaph20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rating',style: kmd),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star_border, color: Colors.indigo,),
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
                    Text('Reviews', style: kmd,),
                    Text('Ali: Good instructor highly recommended.',),
                    Text('Haseeb: Good instructor.',),
                  ],
                ),
              ],
            ),
            gaph20,

          ],
        ),
      ),


    );
  }
}





class talhadata extends StatefulWidget {
  const talhadata({Key? key}) : super(key: key);

  @override
  State<talhadata> createState() => _talhadataState();
}

class _talhadataState extends State<talhadata> {
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
                      backgroundImage: AssetImage('assets/images/talhapic.jpeg'),
                    ),
                    gaph10,
                    Text('Talha Bin Tahir',
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
                    Text('Car: Toyota Vitz'),
                    gaph10,
                    Text('Car Number: LEH-22-7044'),
                    gaph10,
                    Text('Timing: 09:00 AM - 09:00 PM'),
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

            gaph20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rating',style: kmd),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star, color: Colors.indigo,),
                    Icon(Icons.star_border, color: Colors.indigo,),
                    Icon(Icons.star_border, color: Colors.indigo,),
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
                    Text('Reviews', style: kmd,),
                    Text('Usman: Good instructor highly recommended.',),
                    Text('Umar: Good instructor.',),
                  ],
                ),
              ],
            ),
            gaph20,


          ],
        ),
      ),


    );
  }
}
