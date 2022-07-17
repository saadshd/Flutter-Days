import 'package:fee_management_app/pages/manager/teacher_contactlist.dart';
import 'package:flutter/material.dart';
import '../../utils/constant.dart';
import 'add_teacher.dart';

class Teacher extends StatefulWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {

  String dropdownvalue = 'Select a specific Subject';
  var items = [
    'Select a specific Subject',
    'Computer Science',
    'Mathematics',
    'Statistics',
    'Urdu',
    'Islamiat',
    'English',
    'Pakstudies',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher',
          style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
            },

            icon: Icon(Icons.search, color: Colors.white,),
          ),

          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddTeacher()));
            },
            icon: Icon(Icons.person_add_alt_1_sharp, color: Colors.white,),
          ),


          PopupMenuButton(
            position: PopupMenuPosition.under,
            icon: Icon(Icons.more_vert, color: Colors.white,),
            color: Colors.grey.shade200,
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 0,
                child: Text("Contact List",style: TextStyle(color: Colors.indigo),),
              ),
            ],
            onSelected: (item) => SelectedItem(context, item),
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
                                child: Text('T', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mohsin', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('Computer Science', style: ksm),
                          ],
                        ),
                      ],
                    ),
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
                                  child: Text('T', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Waqar', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('Mathematics', style: ksm),
                          ],
                        ),
                      ],
                    ),
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
                                  child: Text('T', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Haseeb', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('Statistics', style: ksm),
                          ],
                        ),
                      ],
                    ),
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
                                  child: Text('T', style: TextStyle(color: Colors.white, fontSize: 20),)
                              ),
                            ]
                        ),
                        gapw10,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Umar', style: ksm),
                            Text('03333333333', style: ksm),
                            Text('English', style: ksm),
                          ],
                        ),
                      ],
                    ),
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


void SelectedItem(BuildContext context, item) {
  switch (item) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => TeacherContactlist()));
      break;

  }
}
