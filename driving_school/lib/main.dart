import 'package:driving_school/pages/bookingpage.dart';
import 'package:driving_school/pages/instructorpage.dart';
import 'package:driving_school/pages/reviewpage.dart';
import 'package:driving_school/pages/navbar.dart';
import 'package:flutter/material.dart';
import 'package:driving_school/pages/home.dart';
import 'package:driving_school/utils/constant.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CDS - Comsats Driving School',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            onPrimary: Colors.white,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const navbar(),
    );
  }
}


