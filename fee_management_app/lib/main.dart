import 'dart:async';
import 'package:fee_management_app/pages/home_login.dart';
import 'package:fee_management_app/pages/manager_login.dart';
import 'package:fee_management_app/pages/student/student_home.dart';
import 'package:fee_management_app/pages/teacher/teacher_home.dart';
import 'package:fee_management_app/pages/teacher/teacher_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FMA - Fee Management App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: HomeLogin(),
    );
  }
}



