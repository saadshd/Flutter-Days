import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class StudentNotification extends StatefulWidget {
  const StudentNotification({Key? key}) : super(key: key);

  @override
  State<StudentNotification> createState() => _StudentNotificationState();
}

class _StudentNotificationState extends State<StudentNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.indigo,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
          ),
          title: Text('Notifications', style: TextStyle(color: Colors.white),)
      ),

      body: Column(
        children: [

          gaph20,
          Padding(
            padding: kpdh20,
            child: Row(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Icon(Icons.payment_outlined, color: Colors.white,),
                      ),
                    ]
                ),
                gapw10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Computer Science fee has been submitted', style: ksm),
                    Text('15/07/2022', style: ksm),
                  ],
                ),

              ],
            ),
          ),
          gaph10,
          Divider(thickness: 1.5,),

          gaph10,
          Padding(
            padding: kpdh20,
            child: Row(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 25,
                        child: Icon(Icons.announcement_outlined, color: Colors.white,),
                      ),
                    ]
                ),
                gapw10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('You are registered to Computer Science ', style: ksm),
                    Text('15/07/2022', style: ksm),
                  ],
                ),

              ],
            ),
          ),
          gaph10,
          Divider(thickness: 1.5,),

          gaph10,
        Padding(
              padding: kpdh20,
              child: Row(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      CircleAvatar(
                          radius: 25,
                          child: Icon(Icons.announcement_outlined, color: Colors.white,),
                      ),
                    ]
                  ),
                  gapw10,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('You are registered to MS Academy', style: ksm),
                      Text('15/07/2022', style: ksm),
                    ],
                  ),

                ],
              ),
            ),
        gaph10,
        ],
      ),

    );
  }
}
