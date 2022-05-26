import 'package:flutter/material.dart';
import 'package:driving_school/utlis/constant.dart';
import 'package:driving_school/widget/instructorwidget.dart';
import 'package:driving_school/utlis/data.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);


  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
            Container(
              color: kblue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                    SizedBox(
                        child: Padding(
                          padding: kpd20,
                          child: Image(
                            image: AssetImage('assets/images/cdsw.png'),
                            width: 200,
                            height: 150,
                          ),
                        )
                    ),


                ],
              ),
            ),
              gaph20,

              const Text('Our Instructors',
              style: kmd),

              gaph20,

              Padding(
                padding: kpd20,
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kcream,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    child: Padding(
                      padding: kpd25,
                      child: Row(
                        children: [
                          Column(
                            children: [

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              gaph20,

              Padding(
                padding: kpd20,
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kcream,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    child: Padding(
                      padding: kpd25,
                      child: Row(
                        children: [
                          Column(
                            children: [

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              gaph20,

              Padding(
                padding: kpd20,
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: kcream,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 100,
                    child: Padding(
                      padding: kpd25,
                      child: Row(
                        children: [
                          Column(
                            children: [

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

               

              // ListView.builder(
              //   itemCount: model.items.length,
              //   itemBuilder: (context, index) {
              //   return instructorwidget();
              //},
              //),


            ],
          ),

      ),
    );
  }
}