import 'package:driving_school/pages/reviewpage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../utils/constant.dart';

class mybookingdata extends StatefulWidget {

  @override
  State<mybookingdata> createState() => _mybookingdataState();
}

class _mybookingdataState extends State<mybookingdata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(20,20,20,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gaph20,
            gaph10,
            Text('My Booking', style: klg,),
            Text('Your booked class', style: kmd,),
            gaph10,
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection('users').snapshots(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  if(!snapshot.hasData)
                    return Center(child: CircularProgressIndicator(),);
                  return ListView.builder(
                      itemCount: snapshot.data.docs.length,
                      itemBuilder: (context,index){
                    return Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Container(
                      decoration: BoxDecoration(
                        color: kblue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 250,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, children: [
                                Row(
                                  children: [
                                    Text('Instructor: ', style: kmd),
                                    Text(snapshot.data.docs[index]['instructor'],style: kmd,)
                                  ],
                                ),
                              Row(
                                children: [
                                  Text('Package: ', style: kmd),
                                  Text(snapshot.data.docs[index]['package'],style: kmd,)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Name: ', style: ksm),
                                  Text(snapshot.data.docs[index]['name'],style: ksm,)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Cnic: ', style: ksm),
                                  Text(snapshot.data.docs[index]['cnic'],style: ksm,)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Date of Birth: ', style: ksm),
                                  Text(snapshot.data.docs[index]['dob'],style: ksm,)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Phone No.: ', style: ksm),
                                  Text(snapshot.data.docs[index]['phone'],style: ksm,)
                                ],
                              ),
                              Row(
                                children: [
                                  Text('Address: ', style: ksm),
                                  Text(snapshot.data.docs[index]['address'],style: ksm,)
                                ],
                              ),
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
                            ],
                            ),
                          ],
                        ),
                      ),
                    )
                    );
                      }
                  );
                }
              ),
            ),
          ],
        ),
      )
    );
  }
}

