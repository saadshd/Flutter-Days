import 'package:fee_management_app/pages/manager/add_student.dart';
import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class Student extends StatefulWidget {
  const Student({Key? key}) : super(key: key);

  @override
  State<Student> createState() => _StudentState();
}

class _StudentState extends State<Student> {

  String dropdownvalue = 'Select a specific Class';
  var items = [
    'Select a specific Class',
    'ICS (1st Year)',
    'ICS (2nd Year)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Students',
          style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.indigo,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
        ),
        actions: [
          IconButton(
            onPressed: () {
            //   Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const StudentSearch()));
            },

            icon: Icon(Icons.search, color: Colors.white,),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddStudent()));
            },
            icon: Icon(Icons.add, color: Colors.white,),
          ),

        ],
      ),

      body: Column(
        children: [

          Padding(
            padding: kpdh20,
            child: DropdownButton(
              isExpanded: true,
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          gaph10,

          Column(
            children: [
              Padding(
                padding: kpdh20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Text('S', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Khubaib', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('ICS (1st Year)', style: ksm),
                          ],
                        ),
                      ],
                    ),
                    Text('Rs 7500', style: ksm),
                  ],
                ),
              ),

              Divider(thickness: 1.5,),

              Padding(
                padding: kpdh20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  radius: 30,
                                  child: Text('S', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Ali', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('ICS (1st Year)', style: ksm),
                          ],
                        ),
                      ],
                    ),
                    Text('Rs 7500', style: ksm),
                  ],
                ),
              ),

              Divider(thickness: 1.5,),

              Padding(
                padding: kpdh20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  radius: 30,
                                  child: Text('S', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bilal', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('ICS (2nd Year)', style: ksm),
                          ],
                        ),
                      ],
                    ),
                    Text('Rs 7500', style: ksm),
                  ],
                ),
              ),

              Divider(thickness: 1.5,),

              Padding(
                padding: kpdh20,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                  radius: 30,
                                  child: Text('S', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Usama', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('ICS (2nd Year)', style: ksm),
                          ],
                        ),
                      ],
                    ),
                    Text('Rs 7500', style: ksm),
                  ],
                ),
              ),


            ],
          ),

        ],
      ),
    );
  }
}
