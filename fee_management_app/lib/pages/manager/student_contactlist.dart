import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class StudentContactlist extends StatefulWidget {
  const StudentContactlist({Key? key}) : super(key: key);

  @override
  State<StudentContactlist> createState() => _StudentContactlistState();
}

class _StudentContactlistState extends State<StudentContactlist> {

  String dropdownvalue1 = 'Select Class';
  var items1 = [
    'Select Class',
    'ICS (1st Year)',
    'ICS (2nd Year)',
  ];

  String dropdownvalue2 = 'Select Subject';
  var items2 = [
    'Select Subject',
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
        title: Text('Contact List',
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
            },

            icon: Icon(Icons.download, color: Colors.white,),
          ),
          IconButton(
            onPressed: () {
            },

            icon: Icon(Icons.share, color: Colors.white,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: kpda20,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownButton(
                    value: dropdownvalue1,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items1.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue1 = newValue!;
                      });
                    },
                  ),

                  DropdownButton(
                    value: dropdownvalue2,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items2.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue2 = newValue!;
                      });
                    },
                  ),
                ],
              ),
              gaph20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Student Name', style: kmd,),
                  Text('Contact Number', style: kmd,)
                ],
              ),
              Divider(thickness: 2,color: Colors.indigo,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Khubiab', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),
              Divider(thickness: 1.5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Ali', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),
              Divider(thickness: 1.5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Bilal', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),
              Divider(thickness: 1.5),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Usama', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}
