import 'package:flutter/material.dart';
import 'drawer.dart';

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
        backgroundColor: Color(0xFF2F2F2F),
        elevation: 0,

      ),
      drawer: MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Alhamdullilah\n",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text("Set 1",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
                  height: 300,
                  width: 250,
                  decoration: BoxDecoration(
                   color: const Color(0xFFF6F6F6),
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
                            padding: const EdgeInsets.fromLTRB(0,35,0,0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: ElevatedButton(onPressed: _incrementCounter,
                                      child: const Icon(Icons.add,
                                      size: 40),
                                      style: ElevatedButton.styleFrom(
                                          elevation: 20,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(100)
                                          ),


                                      )
                                  ),
                                ),
                                SizedBox(
                                  width: 56,
                                  height: 56,
                                  child: ElevatedButton(onPressed: _incrementCounter,
                                      child: const Icon(Icons.refresh,
                                          size: 30),
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
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox.fromSize(
                    size: Size(100,40),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_sharp,
                        size: 24.0,
                      ),
                      label: Text('Back'),
                    ),
                  ),



                  SizedBox.fromSize(
                    size: Size(100,40),
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.file_download_outlined,
                        size: 24.0,
                      ),
                      label: Text('Save'), // <-- Text
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

