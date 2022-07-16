import 'package:flutter/material.dart';

import '../../utils/constant.dart';

class TeacherNotification extends StatefulWidget {
  const TeacherNotification({Key? key}) : super(key: key);

  @override
  State<TeacherNotification> createState() => _TeacherNotificationState();
}

class _TeacherNotificationState extends State<TeacherNotification> {
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
                    Text('Khubaib paid the fee', style: ksm),
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
                    Text('Khubaib has been registered', style: ksm),
                    Text('16/07/2022', style: ksm),
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
                        child: Icon(Icons.payment_outlined, color: Colors.white,),
                      ),
                    ]
                ),
                gapw10,
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ali paid the fee', style: ksm),
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
                    Text('Ali has been registered', style: ksm),
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
                    Text('Bilal has been registered', style: ksm),
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
                    Text('Usama has been registered', style: ksm),
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
                    Text('You are registered for Computer Science ', style: ksm),
                    Text('14/07/2022', style: ksm),
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
                      Text('14/07/2022', style: ksm),
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
