import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidgetfile.dart';
import 'containerfile.dart';
import 'constantfile.dart';

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
  int sliderheight=180;
  int sliderweight=60;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
            carwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HIEGHT', style: klabelstyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(sliderheight.toString(),
                      style: knumberstyle,
                    ),
                    Text('cm',
                    style: klabelstyle,
                    ),
                  ],
                ),
                Slider(
                  value: sliderheight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEb1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue) {
                    setState(() {
                      sliderheight = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
        ),

        Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    carwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: klabelstyle,
                        ),
                        Text(sliderweight.toString(),
                          style: knumberstyle,
                        )
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                          ],
                        )
                      ],
                    ),
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
