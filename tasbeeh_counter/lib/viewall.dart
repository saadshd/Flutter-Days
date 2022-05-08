import 'package:flutter/material.dart';
import 'drawer.dart';
import 'newtasbeeh.dart';

class viewall extends StatelessWidget {

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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFFCB74),
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text('Subhanallah'),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Count 33'),
                                Text('Set 1'),
                              ],
                            ),

                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFFCB74),
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text('Alhamdulilah'),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Count 33'),
                                Text('Set 1'),
                              ],
                            ),

                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFFCB74),
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text('Allahhuakbar'),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Count 33'),
                                Text('Set 1'),
                              ],
                            ),

                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5,0,5,1),
                child: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5,0,5,1),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFFCB74),
                      ),
                      margin: EdgeInsets.only(top: 10.0),
                      height: 100.0,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Text('Astagfirullah'),
                                ),
                              ],
                            ),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text('Count 100'),
                                Text('Set 2'),
                              ],
                            ),

                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.edit,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.delete,
                                  ),
                                  color:Color(0xFF2F2F2F),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}
