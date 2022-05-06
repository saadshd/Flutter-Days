import 'package:flutter/material.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF2F2F2F),
        ).copyWith(
          secondary: const Color(0xFFFFCB74),
        ),
        scaffoldBackgroundColor: Color(0xFF2F2F2F),
        textTheme: const TextTheme(
            bodyText2: TextStyle(color: Colors.black),
            headline4: TextStyle(color: Colors.black),
        ),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}





