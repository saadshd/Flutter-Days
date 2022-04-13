import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidgetfile.dart';
import 'containerfile.dart';

const activeColor = Color(0xFF1D1E33);
const deactiveColor = Color(0xFF111328);

enum Gender{
  male,
  female,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deactiveColor;
  Color femaleColor = deactiveColor;
  void updateColor(Gender gendertype){
    if(gendertype == Gender.male){
      maleColor = activeColor;
      femaleColor = deactiveColor;
    }
    if(gendertype == Gender.female){
      maleColor = deactiveColor;
      femaleColor = activeColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
      children: <Widget>[
        Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child:  GestureDetector(
                      onTap: ()
                      {
                        setState(() {
                          updateColor(Gender.male);
                        });
                      },
                      child: RepeatContainerCode(
                        colors: maleColor,
                        carwidget: RepeatCardWidget(
                          iconData: FontAwesomeIcons.male,
                          label: 'MALE',
                        ),
                      ),
                    ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: ()
                    {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: RepeatContainerCode(
                      colors: femaleColor,
                      carwidget: RepeatCardWidget(
                        iconData: FontAwesomeIcons.female,
                        label: 'FEMALE',
                      ),
                      ),
                  ),
                  ),
                  ],
                ),
                ),



        // Expanded(
        //   child: RepeatContainerCode(
        //     colors: Color(0xFF1D1E33),
        //   ),
        // ),

        // Expanded(
        //     child: Row(
        //       children: <Widget>[
        //         Expanded(
        //           child: RepeatContainerCode(
        //             colors: Color(0xFF1D1E33),
        //           ),
        //         ),
        //         Expanded(
        //           child: RepeatContainerCode(
        //             colors: Color(0xFF1D1E33),
        //           ),
        //         ),
        //       ],
        //     )
        // ),

      ],
      ),

    );
  }
}
