import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
