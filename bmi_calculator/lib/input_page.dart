import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'cardwidgetfile.dart';
import 'containerfile.dart';
import 'constantfile.dart';
import 'resultfile.dart';

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
  int sliderage=20;

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
                          label: 'Male',
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
                        label: 'Female',
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
                Text('Height', style: klabelstyle,
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
                        Text('Weight',
                          style: klabelstyle,
                        ),
                        Text(sliderweight.toString(),
                          style: knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcon(
                              iconData:FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  sliderweight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIcon(
                              iconData:FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  sliderweight++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: RepeatContainerCode(
                    colors: Color(0xFF1D1E33),
                    carwidget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Age',
                          style: klabelstyle,
                        ),
                        Text(sliderage.toString(),
                          style: knumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIcon(
                              iconData:FontAwesomeIcons.minus,
                              onPress: (){
                                setState(() {
                                  sliderage--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIcon(
                              iconData:FontAwesomeIcons.plus,
                              onPress: (){
                                setState(() {
                                  sliderage++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

              ],
            )
        ),

        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
          },
          child: Container(
              child: Center(
                child: Text('Calculate',
                style: klargenumberstyle,
                ),
              ),
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 50.0,
            ),
        ),

      ],
      ),

    );
  }

}

class RoundIcon extends StatelessWidget {
RoundIcon({required this.iconData, required this.onPress});
final IconData iconData;
final VoidCallback onPress;

@override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4c4F5E),
    );
  }
}

