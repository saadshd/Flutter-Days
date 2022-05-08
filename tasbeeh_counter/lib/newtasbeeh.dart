import 'package:flutter/material.dart';

class myalertbox extends StatefulWidget {
  @override
  _myalertboxState createState() => _myalertboxState();
}

class _myalertboxState extends State<myalertbox> {

  @override
  Widget build(BuildContext context) {
                  return AlertDialog(

                    title: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFCB74),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Create Tasbeeh',
                          style: TextStyle(
                            color: Colors.black,
                          ),),
                        ],
                      ),
                    ),

                    content: Container(
                      width: 300,
                      height: 250,
                      child: Column(
                        children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox.fromSize(
                                size: Size(10,10),
                              ),

                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter Tasbeeh Name',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Enter Count Number',
                                  ),
                                ),
                              ),

                              SizedBox.fromSize(
                                size: Size(10,10),
                              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [


                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextButton(
                                      child: Text('Cancel',

                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextButton(
                                      child: Text('Save'),
                                      onPressed: () {

                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                      ],
                      ),
                    ),
                  );

  }
}
