import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  List selected_color = [Colors.purple];
  List selected_icon = [Icons.exit_to_app];


  @override
  Widget build(BuildContext context) {
    List List1 = [
      // Color(0xff000000),
      // Color(0xff00FFFF),
      // Color(0xff0000FF),
      // Color(0xffADD8E6),
      // Color(0xff800080),
      // Color(0xffFFFF00),
      // Color(0xffFF00FF),
      // Color(0xffFFC0CB),
      // Color(0xff00FF00)
      // Colors.indigo,
      // Colors.yellow,
      // Colors.deepOrange,
      // Colors.purpleAccent,
      // Colors.orange,
      // Colors.cyan,
      // Colors.green,
      // Colors.greenAccent,
      // Colors.deepPurple,
      Color.fromRGBO(238, 255, 65, 1),
      Color.fromRGBO(0, 195, 255, 1.0),
      Color.fromRGBO(33, 150, 243, 1),
      Color.fromRGBO(68, 138, 255, 1),
      Color.fromRGBO(63, 81, 181, 1),
      Color.fromRGBO(255, 0, 238, 1.0),
      Color.fromRGBO(199, 52, 52, 1.0),
      Color.fromRGBO(110, 44, 159, 1.0),
    ];
    List List2 = [
      Icons.exit_to_app,
      Icons.play_arrow,
      Icons.pause,
      Icons.stop,
      Icons.close_rounded,
      Icons.delete,
      Icons.email,
      Icons.add,
    ];

    Color a;
    List data = [
      Color(0xffb74093),
    ];

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white.withOpacity(0.9),
                appBar: AppBar(
                  title: Text(
                    "Icon Editor",
                    style: TextStyle(color: Colors.black),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.white,
                ),
                body: SingleChildScrollView(
                  child: Center(
                    child: Column(children: [
                      Container(
                        height: 300,
                        margin: EdgeInsets.all(10),
                        child: Center(
                            child: Icon(
                          selected_icon[0] as IconData?,
                          color: selected_color[0],
                          size: 100,
                        )),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                          "Select Color",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Container(
                        height: 150,
                        margin: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(8, (index) {
                              return GestureDetector(
                                onTap: () {
                                  selected_color[0] = List1[index];

                                  print(selected_color);

                                  setState(() {});
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: List1[index],
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Container(
                        height: 60,
                        margin: EdgeInsets.all(10),
                        child: Center(
                            child: Text(
                          "Select Icon",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        )),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      Container(
                        height: 150,
                        margin: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(8, (index) {
                              return GestureDetector(
                                onTap: () {
                                  selected_icon[0] = List2[index];
                                  setState(() {});
                                },
                                child: Container(
                                  child: Center(
                                    child: Icon(
                                      List2[index],
                                      color: selected_color[0],
                                      size: 30,
                                    ),
                                  ),
                                  margin: EdgeInsets.all(10),
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ]),
                  ),
                ))));
  }
}
