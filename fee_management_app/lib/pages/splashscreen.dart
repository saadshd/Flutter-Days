import 'package:fee_management_app/pages/manager/manager_login.dart';
import 'package:fee_management_app/pages/student/student_login.dart';
import 'package:fee_management_app/pages/teacher/teacher_login.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/fma.png', width: 250, height: 250),

                Text('W e l c o m e  T o', style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.w200,)),
                Text('Fee Management App', style: Theme.of(context).textTheme.headline6),

              ],
            ),
          ),


          Container(
            height: MediaQuery.of(context).size.height * 0.3 ,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),

            child: Padding(
              padding: kpdh20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // gaph20,
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const ManagerLogin()));
                      },
                      child: Text('MANAGER')
                  ),
                  // gaph20,

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const TeacherLogin()));
                      },
                      child: Text('TEACHER')
                  ),
                  // gaph20,

                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const StudentLogin()));
                      },
                      child: Text('STUDENT')
                  ),
                ],
              ),
            )
          ),

        ],
      ),


    );
  }
}
