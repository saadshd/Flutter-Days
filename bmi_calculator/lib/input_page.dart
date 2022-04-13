import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidgetfile.dart';
import 'containerfile.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child:  RepeatContainerCode(
                      colors: Color(0xFF1D1E33),
                      carwidget: RepeatCardWidget(
                        iconData: FontAwesomeIcons.male,
                        label: 'MALE',
                      ),
                    ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
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
