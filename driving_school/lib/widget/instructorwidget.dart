import 'package:driving_school/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:driving_school/utils/data.dart';
import '../pages/instructordata.dart';
import '../utils/constant.dart';

class instructorcontainer extends StatelessWidget {


  final String title;
  final String subtitle;
  final image;

  const instructorcontainer({super.key, required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpd20,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const instructordata()),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(10),
          ),
          height: 100,
          child: Padding(
            padding: kpd25,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: kmd),
                    Text(subtitle, style: ksm),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: image,

                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

