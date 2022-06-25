import 'package:driving_school/pages/bookingpage.dart';
import 'package:flutter/material.dart';
import 'package:driving_school/widget/packageswidget.dart';

import '../utils/constant.dart';

class packagespage extends StatelessWidget {
  const packagespage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Packages', style: klg,),
                  Text('Select your preffered Package', style: kmd,),
                  gaph20,
                  gaph20,
                  packagecontainer(
                      package: 'Package 1',
                      car: 'Car: Toyota Vitz',
                      duration: 'Duration: 2 weeks',
                      price: 'Price:  Rs 5000',
                    image: Image.asset('assets/images/vitz.png'),
                      onTap: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const bookingpage()),
                      );
                    },
                  ),
                  gaph20,

                  packagecontainer(
                    package: 'Package 2',
                    car: 'Car: Toyota Vitz',
                    duration: 'Duration: 4 weeks',
                    price: 'Price:  Rs 9000',
                    image: Image.asset('assets/images/vitz.png'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const bookingpage()),
                      );
                    },
                  ),
                  gaph20,


                  packagecontainer(
                    package: 'Package 3',
                    car: 'Car: Toyota Corolla',
                    duration: 'Duration: 2 weeks',
                    price: 'Price:  Rs 7000',
                    image: Image.asset('assets/images/corolla.png'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const bookingpage()),
                      );
                    },
                  ),
                  gaph20,


                  packagecontainer(
                    package: 'Package 4',
                    car: 'Car: Toyota Corolla',
                    duration: 'Duration: 4 weeks',
                    price: 'Price:  Rs 13000',
                    image: Image.asset('assets/images/corolla.png'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const bookingpage()),
                      );
                    },
                  ),
                  gaph20,

                ],
              ),
            ),

        ),
      ),

    );
  }
}
