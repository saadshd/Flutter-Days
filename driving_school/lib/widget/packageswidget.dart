import 'package:flutter/material.dart';

import '../utils/constant.dart';

class packagecontainer extends StatelessWidget {


  final String package;
  final String car;
  final String price;
  final String duration;
  final image;
  final VoidCallback onTap;

  const packagecontainer({
    super.key,
    required this.package,
    required this.car,
    required this.duration,
    required this.price,
    required this.onTap,
    required this.image,

     });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(package, style: kmd),
                      Text(car, style: ksm),
                      Text(duration, style: ksm),
                      Text(price, style: ksm),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Container(
                            width: 140,
                            height:80,
                            child: image,
                          ),
                          )
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


