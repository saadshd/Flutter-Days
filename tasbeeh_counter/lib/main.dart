import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';
import 'counter.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Tasbeeh Counter',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFFFCB74),
        ).copyWith(
          secondary: const Color(0xFF2F2F2F),
        ),
        scaffoldBackgroundColor: Color(0xFF2F2F2F),
        textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black),
            headline4: TextStyle(color: Colors.black),
            headline5: TextStyle(color: Colors.black),
        ),
      ),
      home: home(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState ();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => home())));
  }

  @override
  Widget build(BuildContext context) {

    return  Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/tasbih.jpeg"),
              fit: BoxFit.cover,
          ),
        ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '\n\n\n\n\n\n'
              '\n\n\n\n\n\n'
              '\n\n\n\n\n\n''TASBEEH COUNTER',
              style: TextStyle(
                color: Color(0xFFF6F6F6),
                fontSize: 20.0,
                decoration: TextDecoration.none,
              ),
            ),
          ],

        ),
      ),

    ),
    );

  }
}





