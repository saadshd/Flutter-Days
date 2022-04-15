import 'package:bmi_calculator/constantfile.dart';
import 'package:flutter/material.dart';
import 'constantfile.dart';

class RepeatCardWidget extends StatelessWidget {
  RepeatCardWidget({required this.iconData, required this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 75.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: klabelstyle,
        ),
      ],
    );
  }
}