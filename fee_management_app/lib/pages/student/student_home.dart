import 'package:fee_management_app/pages/student/student_search.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class StudentHome extends StatefulWidget {
  const StudentHome({Key? key}) : super(key: key);

  @override
  State<StudentHome> createState() => _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MS Academy',
          style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const StudentSearch()));
            },

            icon: Icon(Icons.search, color: Colors.white,),
          ),

          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.notifications_outlined, color: Colors.white,),
          ),

          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.logout, color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.indigo,
                height: 150,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                child: Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 120,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: kpdh20,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Khubaib', style: kmd),
                              Text('03333333333', style: ksm),
                              Text('ICS (1st Year)', style: ksm),
                              Text('khubaib@gmail.com', style: ksm),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                child: Text('S', style: TextStyle(fontSize: 40),)
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),


          Padding(
            padding: kpda20,
            child: Column(
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: kpda20,
                    child:
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Subject', style: ksm,),
                            Text('Computer Science', style: kmd,)
                          ],
                        ),
                        Divider(thickness: 1.5),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Teacher', style: ksm,),
                            Text('Mohsin', style: kmd,)
                          ],
                        ),
                        Divider(thickness: 1.5),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Fee', style: ksm,),
                            Text('1500', style: kmd,)
                          ],
                        ),
                        Divider(thickness: 1.5),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Fee Status', style: ksm,),
                            Text('Paid', style: kmd,)
                          ],
                        ),
                      ],
                    ),
                  )
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
