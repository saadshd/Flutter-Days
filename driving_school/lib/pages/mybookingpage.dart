import 'package:driving_school/pages/bookingpage.dart';
import 'package:driving_school/pages/reviewpage.dart';
import 'package:flutter/material.dart';
import 'package:driving_school/widget/packageswidget.dart';

import '../utils/constant.dart';

class mybookingdata extends StatefulWidget {
  const mybookingdata({
    super.key,
    this.name,
    this.cnic,
    this.dob,
    this.phone,
    this.address,
    this.instrcutor,
    this.package});

  final String ? name,cnic,dob,phone,address,instrcutor,package;

  @override
  State<mybookingdata> createState() => _mybookingdataState();
}

class _mybookingdataState extends State<mybookingdata> {
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
                Text('My Booking', style: klg,),
                Text('Your booked class', style: kmd,),

                gaph20,
                // Text('Name: ${widget.name}',),
                // Text('CNIC: ${widget.cnic}',),
                // Text('Date of Birth: ${widget.dob}',),
                // Text('Phone: ${widget.phone}',),
                // Text('Address: ${widget.address}',),
                // Text('Instructor: ${widget.instrcutor}',),
                // Text('Package: ${widget.package}',),
                Container(
                  decoration: BoxDecoration(
                    color: kblue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 300,
                  child: Padding(
                    padding: kpd25,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Instructor: M. Saad Shahid', style: kmd),
                            Text('Package: 1', style: kmd),
                            Text('Name: Shahid Mahmood', style: ksm),
                            Text('Cnic: 3660347880473', style: ksm),
                            Text('Date of Birth: 13-01-2002', style: ksm),
                            Text('Phone No.: 03357735290', style: ksm),
                            Text('Address: House no. H-1 Officers Colony, Vehari', style: ksm),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: ,
                          children: [
                            gaph10,
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const reviewpage()),
                                );
                              },
                              child: Text('Add Review'),
                            ),
                            gaph10,
                          ],
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),

        ),
      ),

    );
  }
}

