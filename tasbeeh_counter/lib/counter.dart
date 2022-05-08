import 'package:flutter/material.dart';
import 'package:tasbeeh_counter/home.dart';
import 'drawer.dart';
import 'newtasbeeh.dart';
import 'package:page_transition/page_transition.dart';

class CounterPage extends StatefulWidget {

  final String ? TasbeehText, TasbeehCount;
  const CounterPage({Key ? key,this.TasbeehText,this.TasbeehCount}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _restartCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Tasbeeh Counter"),
        centerTitle: true,
        backgroundColor: Color(0xFF2F2F2F),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            color:Colors.white,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return myalertbox();
                  });
            },
          ),
        ],
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
                      Text('${widget.TasbeehText}\n',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text('Count ${widget.TasbeehCount}',
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
                                  child: ElevatedButton(onPressed: _restartCounter,
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: home(),
                          ),
                        );
                      },
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.fade,
                            child: home(),
                          ),
                        );
                      },
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

