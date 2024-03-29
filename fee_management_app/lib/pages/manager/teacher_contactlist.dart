import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class TeacherContactlist extends StatefulWidget {
  const TeacherContactlist({Key? key}) : super(key: key);

  @override
  State<TeacherContactlist> createState() => _TeacherContactlistState();
}

class _TeacherContactlistState extends State<TeacherContactlist> {
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
                  Text('Teacher Name', style: kmd,),
                  Text('Contact Number', style: kmd,)
                ],
              ),
              Divider(thickness: 2,color: Colors.indigo,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mohsin', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),
              Divider(thickness: 1.5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Waqar', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),
              Divider(thickness: 1.5),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Haseeb', style: ksm,),
                  Text('03333333333', style: ksm,)
                ],
              ),
              Divider(thickness: 1.5),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Umar', style: ksm,),
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
