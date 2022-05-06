//import 'dart:async';
import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';
import 'counter.dart';

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
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class Splashscreen extends StatefulWidget {
//   @override
//
//   _MyAppState createState() => new _MyAppState();
// }
//
// class _MyAppState extends State<Splashscreen> {
//
//   @override
//
//   Widget build(BuildContext context) {
//
//     return SplashScreen(
//       seconds: 5,
//       navigateAfterSeconds: MyHomePage(),
//       title:
//       Text(
//         "Muhammad Saad Shahid\n          FA19-BCS-049",
//         style: TextStyle(color:Colors.blue,
//             fontWeight: FontWeight.bold,
//             fontSize: 30,
//             decoration: TextDecoration.none),
//       ),
//
//       backgroundColor: Colors.grey.shade50,
//       loaderColor: Colors.blue,
//     );
//   }
// }

// class splashscreen extends StatefulWidget {
//   const splashscreen({Key? key}) : super(key: key);
//
//   @override
//   State<splashscreen> createState() => _splashscreenState();
// }
//
// class _splashscreenState extends State<splashscreen> {
//   @override
//   void initState() {
//     super.initState ();
//     Timer(const Duration(seconds: 5),
//             ()=>Navigator.pushReplacement(context,
//             MaterialPageRoute(builder:
//                 (context) =>
//             const MyHomePage()
//             )
//         ));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     return  Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Text(
//               'Tasbeeh Counter\n\n',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: Colors.teal,
//                 fontSize: 50.0,
//                 decoration: TextDecoration.none,
//               ),
//             ),
//           ],
//         ),
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: const [
//             Text(
//               '\n\nLoading...',
//               style: TextStyle(
//                 fontFamily: 'Poppins',
//                 color: Colors.teal,
//                 fontSize: 20.0,
//                 decoration: TextDecoration.none,
//
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//
//   }
// }





