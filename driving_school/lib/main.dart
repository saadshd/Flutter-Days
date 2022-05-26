import 'package:flutter/material.dart';
import 'package:driving_school/pages/home.dart';
import 'package:driving_school/utlis/constant.dart';
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
        primaryColor : kblue,
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const home(),
    );
  }
}


