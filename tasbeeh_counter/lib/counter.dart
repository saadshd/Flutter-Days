import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tasbeeh Counter"),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(
                   color: const Color(0xFFFFCB74),
                   borderRadius: BorderRadius.circular(15),
                  ),
                  margin: EdgeInsets.all(15),
                  padding: const EdgeInsets.fromLTRB(0,25,0,0),
                  child:
                      Column(
                        children: [
                          Text('COUNTER',
                          style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            '$_counter',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,25,0,0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: ElevatedButton(onPressed: _incrementCounter,
                                      child: const Icon(Icons.add,
                                      size: 30,
                                      color: Colors.white),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 20,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(100)
                                          ),
                                          padding: EdgeInsets.all(20),

                                      )
                                  ),
                                ),
                                SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: ElevatedButton(onPressed: _incrementCounter,
                                      child: const Icon(Icons.refresh,
                                          size: 40,
                                          color: Colors.white),
                                      style: ElevatedButton.styleFrom(
                                        elevation: 20,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(100)
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                ),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("M. Saad Shahid"),
            accountEmail: Text("saadrajput831@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                "S",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading:
            Icon(Icons.home),
            title: const Text('Home'),


            // onTap: () {
            //   Navigator.push(
            //     context,
            //     PageTransition(
            //       type: PageTransitionType.leftToRightWithFade,
            //       child: Home(),
            //     ),
            //   );
            // },
          ),
          ListTile(
            leading:
            Icon(Icons.account_circle_rounded),
            title: const Text('My Profile',
              style: TextStyle(
                color: Colors.blue,
              ) ,
            ),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     PageTransition(
            //       type: PageTransitionType.leftToRightWithFade,
            //       child: Profile(),
            //     ),
            //   );
            // },
          ),
          ListTile(
            leading:
            Icon(Icons.settings),
            title: const Text('Setting',
              style: TextStyle(
                color: Colors.blue,
              ) ,
            ),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     PageTransition(
            //       type: PageTransitionType.leftToRightWithFade,
            //       child: Setting(),
            //     ),
            //   );
            // },
          ),
          ListTile(
            leading:
            Icon(Icons.contacts),
            title: const Text('Contact Us',
              style: TextStyle(
                color: Colors.blue,
              ) ,
            ),
            // onTap: () {
            //   Navigator.push(
            //     context,
            //     PageTransition(
            //       type: PageTransitionType.leftToRightWithFade,
            //       child: Contact(),
            //     ),
            //   );             },
          ),

        ],
      ),
    );
  }
}