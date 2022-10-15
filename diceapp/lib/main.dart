import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';
import 'package:loading_animations/loading_animations.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyDiceApp extends StatefulWidget {
  const MyDiceApp({Key? key}) : super(key: key);

  @override
  _MyDiceAppState createState() => _MyDiceAppState();
}

class _MyDiceAppState extends State<MyDiceApp> {
  var sum = 0;
  var dice1 = 1;
  var dice2 = 1;
  var dice3 = 1;
  var dice4 = 1;
  var score=0;
  var win=0;
  var sd1=0;
  var sd2=0;
  var sd3=0;
  var sd4=0;

  void total() {
    setState(() {
      sum = sd1 + sd2 + sd3 + sd4;
    });
  }
  void sum1() {

    setState(() {
      sd1=sd1+dice1;

    });
  }
  void sum2() {

    setState(() {
      sd2=sd2+dice2;

    });
  }
  void sum3() {

    setState(() {
      sd3=sd3+dice3;

    });
  }
  void sum4() {

    setState(() {
      sd4=sd4+dice4;

    });
  }

  void winner() {
    setState(() {
      if(sd1 > sd2 && sd1 > sd3 && sd1 > sd4)
      {
        win=1;
        score=sd1;


      }
      if(sd2 > sd3 && sd2 > sd1 && sd2 > sd4)
      {
        win=2;
        score=sd2;
      }
      if(sd3 > sd4 && sd3 > sd1 && sd3 > sd2)
      {
        win=3;
        score=sd3;
      }
      if(sd4 > sd1 && sd4 > sd2 && sd4 > sd3)
      {
        win=4;
        score=sd4;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text(
            "DICE GAME"
            ,style:TextStyle(
              color:Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal.shade300,
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("INSTRUCTIONS:"
                      "\n You can roll die individually by clicking on it and \n "
                      "You can Roll all the dice at once by clicking Roll Button ",
                    style:TextStyle(
                        color:Colors.white,
                      fontSize: 14,

                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Dice 1 = $sd1",
              style:const TextStyle(
              color:Colors.white
        ),
      ),

                  Text("Dice 2 = $sd2",
                    style:const TextStyle(
                        color:Colors.white
                    ),
                  ),
                ],
              ),
            ),

          Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        child: Image.asset('images/dice$dice1.png'),
                        onPressed: () {
                          setState(() {
                            dice1 = Random().nextInt(6) + 1;
                            sum1();
                          });
                        },
                      ),
                    ),



                Expanded(
                  child: TextButton(
                    child: Image.asset('images/dice$dice2.png'),
                    onPressed: () {
                      setState(() {
                        dice2 = Random().nextInt(6) + 1;
                        sum2();
                      });

                      print(num);
                    },
                  ),
                ),
                  ],
                ),
          ),

            const SizedBox(
              height: 5.0,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Dice 3 = $sd3",
                    style:const TextStyle(
                        color:Colors.white
                    ),
                  ),

                  Text("Dice 4 = $sd4",
                    style:const TextStyle(
                        color:Colors.white
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/dice$dice3.png'),
                      onPressed: () {
                        setState(() {
                          dice3 = Random().nextInt(6) + 1;
                          sum3();
                        });

                        print(num);
                      },
                    ),
                  ),



                  Expanded(
                    child: TextButton(
                      child: Image.asset('images/dice$dice4.png'),
                      onPressed: () {
                        setState(() {
                          dice4 = Random().nextInt(6) + 1;
                          sum4();
                        });

                        print(num);
                      },
                    ),
                  ),
                ],
              ),
            ),






            Padding(
              padding: const EdgeInsets.all(15),
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[



                  SizedBox(
                    height: 40 ,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade300,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),

                      ),
                      child: const Text('ROLL'),


                      onPressed: () {
                        setState(() {
                          dice1 = Random().nextInt(6) + 1;
                          sum1();
                        });
                        setState(() {
                          dice4 = Random().nextInt(6) + 1;
                          sum4();
                        });
                        setState(() {
                          dice3 = Random().nextInt(6) + 1;
                          sum3();
                        });
                        print(num);
                        setState(() {
                          dice2 = Random().nextInt(6) + 1;
                          sum2();
                        });
                        print(num);
                      },
                    ),
                  ),

                  SizedBox(
                    height: 40 ,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.teal.shade300,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),

                      ),



                      child: const Text('RESULT'),

                      onPressed: () {
                        total();
                        winner();
                        showDialog(
                          context: context,
                          builder: (BuildContext context){
                            return AlertDialog(
                              title: const Text("Result",
                                  style: TextStyle(
                                    color: Colors.white,)),
                              content: Text("Total Score = $score Winner = Dice $win",
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: Colors.teal,
                                    elevation: 5,
                                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
                                  ),
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                              backgroundColor: Colors.teal.shade300,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            );
                          },

                        );
                      },
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),






      ),

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
    Timer(const Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const MyDiceApp()
            )
        ));
  }


  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'DICE GAME\n\n',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.teal,
                fontSize: 50.0,
                decoration: TextDecoration.none,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoadingFlipping.circle(
              borderColor: Colors.teal,
            )],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '\n\nLoading...',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.teal,
                fontSize: 20.0,
                decoration: TextDecoration.none,

              ),
            ),
          ],
        ),
      ],
    );

  }
}