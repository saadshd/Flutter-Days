import 'package:flutter/material.dart';
import 'package:tasbeeh_counter/counter.dart';
import 'drawer.dart';

class home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F2F2F),
        elevation: 0,

      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.white,
          child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [BoxShadow(blurRadius: 10, color: Colors.white, spreadRadius: 7)],
                    ),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/tasbih.jpeg'),
                    ),
                  ),
                ),

              Text(
                '\nTasbeeh Counter',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),

          SizedBox.fromSize(
            size: Size(150,50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {},
               child: Text('Create Tasbeeh'),
            ),
          ),

          SizedBox.fromSize(
            size: Size(150,50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CounterPage()),
                );
              },
              child: Text('Counter Tasbeeh'),
            ),
          ),

          SizedBox.fromSize(
            size: Size(150,50),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {

              },
              child: Text('View All Tasbeeh'),
            ),
          ),


        ]
        ),
      ),
    );
  }
}
