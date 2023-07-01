import 'package:flutter/material.dart';
void main() {
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  State<Myapp> createState() => _MyappState();
}
List<TextEditingController> _controllers = [];
List<TextField> _fields = [];
List<String> date = [];
int hours = 9;
int range = 20 - hours;
int rangelimit = 0;
class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("To-Do App"),
            centerTitle: true,
            backgroundColor: Color(0xFFFF5722),
            actions: [
              GestureDetector(
                  onTap: () {
                    for (int i = 0; i < date.length; i++) {
                      print("TIME SLOT:" +
                          date[i].replaceAll("\n", "") +
                          "\nTASK\t" +
                          _controllers[i].text);
                    }
                  },
                  child: Icon(Icons.apps))
            ],
          ),
          body: SingleChildScrollView(

            child: Column(
              children: List.generate(rangelimit, (index) {
                return Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(

                          margin: EdgeInsets.all(10),
                          height: 60,

                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(5),
                            border:
                            Border.all(width: 1, color: Color(0xff9B9B9B)),
                          ),
                          child: Center(
                            child: Text(
                              date[index] as String,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 4,
                        child: Container(
                          height: 60,

                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(5),
                            border:
                            Border.all(width: 1, color: Color(0xff9B9B9B)),
                          ),
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.only(left: 10, top: 7),
                          child: _fields[index],
                        ))
                  ],
                );
              }),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0XFFFF5722),
            onPressed: () {
              if (hours >= 12) {
                if (hours == 12) {
                  int x = hours;
                  date.add(x.toString() + ':00\n PM');
                  hours++;
                } else {
                  int x = hours - 12;
                  date.add(x.toString() + ':00\n PM');
                  hours++;
                }
              } else {
                date.add(hours.toString() + ':00\n AM');

                hours++;
              }
              TextField field = TextField(
                controller: controller,
                textAlign: TextAlign.start,
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Enter Your To-Do here...",
                  hintStyle: TextStyle(color: Color(0xff9B9B9B)),
                ),
              );
              setState(() {
                if (range + 1 != rangelimit) {
                  rangelimit++;
                }
                _controllers.add(controller);
                _fields.add(field);
                print(_controllers);
              });
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}