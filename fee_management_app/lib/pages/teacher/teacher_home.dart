import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class TeacherHome extends StatefulWidget {
  const TeacherHome({Key? key}) : super(key: key);

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {

  String dropdownvalue = 'FSC-Med (1st Year)';
  var items = [
    'FSC-Med (1st Year)',
    'FSC-Med (2nd Year)',
    'FSC-Eng (1st Year)',
    'FSC-Eng (2nd Year)',
    'ICS (1st Year)',
    'ICS (2nd Year)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Academy Name',
          style: TextStyle(color: Colors.white),),
        elevation: 0,
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.search, color: Colors.white,),
          ),

          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.notifications, color: Colors.white,),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                color: Colors.indigo,
                height: 150,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 120,
                  width: 350,
                  child: Padding(
                    padding: kpdh20,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Name', style: kmd),
                            Text('Phone', style: ksm),
                            Text('Subject', style: ksm),
                            Text('Email', style: ksm),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 40,
                                child: Text('T', style: TextStyle(fontSize: 40),)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),




          Padding(
            padding: kpda20,
            child: Column(
              children: [

                DropdownButton(
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

                gaph20,

                Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Student Name', style: kmd,),
                              Text('Fee Status', style: kmd,)
                            ],
                          ),
                          Divider(thickness: 2,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('1. Khubaib', style: ksm,),
                              Text('Paid', style: ksm,)
                            ],
                          ),
                          Divider(),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('2. Ali', style: ksm,),
                              Text('Paid', style: ksm,)
                            ],
                          ),
                          Divider(),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('3. Bilal', style: ksm,),
                              Text('Not Paid', style: ksm,)
                            ],
                          ),
                          Divider(),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('4. Usama', style: ksm,),
                              Text('Not Paid', style: ksm,)
                            ],
                          ),

                        ],
                      ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
