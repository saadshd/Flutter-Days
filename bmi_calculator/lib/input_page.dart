import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidgetfile.dart';
import 'containerfile.dart';

const activeColor = Color(0xFF1D1E33);
const deactiveColor = Color(0xFF111328);

enum Gender{
  male,
  female,
  h,
}


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender = Gender.h;

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
                      child: RepeatContainerCode(
                        onPressed: (){
                          setState(() {
                            selectGender=Gender.male;
                          });
                        },
                        colors: selectGender==Gender.male?activeColor:deactiveColor,
                        carwidget: RepeatCardWidget(
                          iconData: FontAwesomeIcons.male,
                          label: 'MALE',
                        ),
                      ),

                ),
                Expanded(
                    child: RepeatContainerCode(
                      onPressed: (){
                        setState(() {
                          selectGender=Gender.female;
                        });
                      },
                      colors: selectGender==Gender.female?activeColor:deactiveColor,
                      carwidget: RepeatCardWidget(
                        iconData: FontAwesomeIcons.female,
                        label: 'FEMALE',
                      ),
                      ),

                  ),
                  ],
                ),
                ),



        Expanded(
          child: RepeatContainerCode(
            colors: Color(0xFF1D1E33),
          ),
        ),

        Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            )
        ),

      ],
      ),

    );
  }

}
