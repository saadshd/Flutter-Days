import 'package:flutter/material.dart';
import '../utils/constant.dart';

class instructorcontainer extends StatelessWidget {


  final String title;
  final String subtitle;
  final image;
  final VoidCallback onTap;

  const instructorcontainer({
    super.key,
  required this.title,
  required this.subtitle,
  required this.image,
  required this.onTap });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: kpd20,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
              color: kblue,
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
      ),
    );
  }
}

