import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'containerfile.dart';
import 'input_page.dart';
import 'constantfile.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    this.resultText,
    this.value,

  });
  final String? resultText;
  final String? value;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text('Your Result',
                  style: kTitleStyleS2,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: RepeatContainerCode(
              colors: activeColor,
              carwidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText!,
                  style: kResultText,
                  ),
                  Text(value!,
                    style: kBMITextstyle,
                  ),

                ],
              )
            )
          ),
          Expanded(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              },
              child: Container(
                child: Center(
                  child: Text('ReGuess',
                    style: klargenumberstyle,
                  ),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 50.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
