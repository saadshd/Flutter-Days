import 'package:fee_management_app/utils/constant.dart';
import 'package:flutter/material.dart';

class ManagerReport extends StatefulWidget {
  const ManagerReport({Key? key}) : super(key: key);

  @override
  State<ManagerReport> createState() => _ManagerReportState();
}

class _ManagerReportState extends State<ManagerReport> {

  String dropdownvalue = 'Select an Option';
  var items = [
    'Select an Option',
    'Subject Wise',
    'Class Wise',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.indigo,
        title: Text('Report', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.contacts,size: 30,color: Colors.indigo,),
                    gapw20,
                    Text('Teacher Contacts' ,style: kmd,),
            ]

          ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.download, color: Colors.indigo,),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.share, color: Colors.indigo,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1.5,),

          Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                    children: [
                      Icon(Icons.contacts,size: 30,color: Colors.indigo,),
                      gapw20,
                      Text('Student Contacts' ,style: kmd,),
                    ]

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownButton(
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
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.download, color: Colors.indigo,),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.share, color: Colors.indigo,),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(thickness: 1.5,),


        ],
      ),
    );
  }
}
