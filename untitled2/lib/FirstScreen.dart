

import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'Secondpage.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    _startcount();


    super.initState();
  }

  TextEditingController clocktext = TextEditingController();
  int clockvalue = 0;
  num secondvalue = 0;
  num thirdvalue = 0;
  int value = 0, value1 = 0, value2 = 0;
  num fourvalue = 120 * (DateTime.now().hour - 1) + 360;
  int v = 0;
  int y = 0;
  int f = 0;
  List l = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  List l1 = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
  ];

  _startcount() {
    setState(() {
      Future.delayed(Duration(seconds: 1), () {
        value = int.parse(DateTime.now().second.toString());
        value1 = int.parse(DateTime.now().minute.toString());
        value2 = int.parse(DateTime.now().hour.toString());
        thirdvalue = 360 + value1 * 24;

        if (value2 > 12) {
          value2 -= 12;
        }
        fourvalue = 120 * (value2) + 360;

        secondvalue = ((24 * value) + 360);

        print("second $secondvalue");
        print("minute $thirdvalue");
        print("hour $fourvalue");
        _startcount();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
      appBar: AppBar(
          title: Text("Clock App"),
          centerTitle: true,
          backgroundColor: Colors.deepPurple),
      floatingActionButton: Align(
        alignment: Alignment(0.11, -0.240),
        child: Container(
          height: 125,
          width: 125,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.grey),
              shape: BoxShape.circle),
        ),
      ),
      body: Center(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                    width: 10,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.black.withOpacity(0.6)),
                shape: BoxShape.circle,
                color: Colors.white.withOpacity(0.98),
              ),
              child: Stack(
                children: [
                  for (var i in l)
                    Transform.rotate(
                      angle: (v += 120) * math.pi / 720,
                      child: Center(
                          child: Text(
                        "$i\n\n\n\n\n\n\n\n\n",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  Transform.rotate(
                    angle: fourvalue * math.pi / 720,
                    child: Center(
                      child: Divider(
                        indent: 50,
                        endIndent: 90,
                        color: Colors.black,
                        thickness: 5,
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: thirdvalue * math.pi / 720,
                    child: Center(
                      child: Divider(
                        indent: 30,
                        endIndent: 90,
                        color: Colors.black,
                        thickness: 4,
                      ),
                    ),
                  ),
                  for (var g in l)
                    Transform.rotate(
                      angle: (f += 120) * math.pi / 720,
                      child: Center(
                          child: Divider(
                        indent: 5,
                        endIndent: 180,
                        color: Colors.black,
                        thickness: 2,
                      )),
                    ),
                  for (var z in l1)
                    Transform.rotate(
                      angle: (y += 24) * math.pi / 720,
                      child: Center(
                          child: Divider(
                        indent: 8,
                        endIndent: 180,
                        color: Colors.black,
                        thickness: 1.2,
                      )),
                    ),
                  Transform.rotate(
                    angle: secondvalue * math.pi / 720,
                    child: Center(
                      child: Divider(
                        indent: 30,
                        endIndent: 90,
                        color: Colors.red,
                        thickness: 2,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("$value2",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(":",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("$value1",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(":",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("$value",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            }, child: Text("Goto Timer"))

          ],
        ),
      )),
    );
  }
}

int v = 120;

seconds() {}
