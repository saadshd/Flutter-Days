import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'containerfile.dart';
import 'input_page.dart';
import 'constantfile.dart';

class ResultScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
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
                  Text('Normal',
                  style: kResultText,
                  ),
                  Text('18.3',
                    style: kBMITextstyle,
                  ),
                  Text('BMI is low you should have to work more',
                    textAlign: TextAlign.center,
                    style: kbodyTextstyle,
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
                  child: Text('ReCalculate',
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
