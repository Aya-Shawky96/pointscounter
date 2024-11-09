import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;
  int teamBPoints = 0;

  void addA(int x) {
    setState(() {
      teamAPoints += x;
    });
  }

  void addB(int x) {
    setState(() {
      teamBPoints += x;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Points Counter",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                        // margin: EdgeInsets.only(top: 10),
                        child: Text(
                      "Team A",
                      style: TextStyle(fontSize: 32),
                    )),
                    Container(
                        // margin: EdgeInsets.only(bottom: 1),
                        child: Text("$teamAPoints",
                            style: TextStyle(fontSize: 150, height: 1))),
                    MaterialButton(
                      onPressed: () {
                        addA(1);
                      },
                      height: 40,
                      minWidth: 150,
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.deepOrange,
                    ),
                    MaterialButton(
                      onPressed: () {
                        addA(2);
                      },
                      height: 40,
                      minWidth: 150,
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.deepOrange,
                    ),
                    MaterialButton(
                      onPressed: () {
                        addA(3);
                      },
                      height: 40,
                      minWidth: 150,
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
                Container(
                  height: 370,
                  child: VerticalDivider(color: Colors.grey, thickness: 2),
                ),
                Column(
                  children: [
                    Container(
                        // margin: EdgeInsets.only(top: 10),
                        child: Text(
                      "Team B",
                      style: TextStyle(fontSize: 32),
                    )),
                    Container(
                        // margin: EdgeInsets.only(bottom: 1),
                        child: Text("$teamBPoints",
                            style: TextStyle(fontSize: 150, height: 1))),
                    MaterialButton(
                      onPressed: () {
                        addB(1);
                      },
                      height: 40,
                      minWidth: 150,
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.deepOrange,
                    ),
                    MaterialButton(
                      onPressed: () {
                        addB(2);
                      },
                      height: 40,
                      minWidth: 150,
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.deepOrange,
                    ),
                    MaterialButton(
                      onPressed: () {
                        addB(3);
                      },
                      height: 40,
                      minWidth: 150,
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(fontSize: 20),
                      ),
                      color: Colors.deepOrange,
                    ),
                  ],
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  teamBPoints = 0;
                  teamAPoints = 0;
                });
              },
              height: 40,
              minWidth: 150,
              color: Colors.deepOrange,
              child: Text(
                "Reset",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
