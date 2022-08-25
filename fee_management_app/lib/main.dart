import 'package:fee_management_app/pages/splashscreen.dart';
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.black12),
          ),
        ),
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
          bodyText2: TextStyle(color: Colors.white),
        ),
      ),
      home: Splashscreen(),
    );
  }
}



