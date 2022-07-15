import 'package:fee_management_app/utils/constant.dart';
import 'package:flutter/material.dart';

class TeacherSearch extends StatefulWidget {
  const TeacherSearch({Key? key}) : super(key: key);

  @override
  State<TeacherSearch> createState() => _TeacherSearchState();
}

class _TeacherSearchState extends State<TeacherSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          ),
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50)
            ),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        /* Clear the search field */
                      },
                    ),
                    hintText: 'Search Student',
                    border: InputBorder.none),
              ),
            ),
          )),


      body: Center(
        child: Text('No data to show', style: ksm,),
      )

    );
  }
}
