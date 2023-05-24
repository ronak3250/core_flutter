import 'package:flutter/material.dart';

void main() {
  runApp(Bolt());
}

class Bolt extends StatelessWidget {
  const Bolt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(33, 33, 33, 1),
              centerTitle: true,
              title: Text(
                "THE WALL",
                style: TextStyle(fontSize: 25),
              ),
            ),
            body: Column(
              children: List.generate(7, (index) {
                return index%2==0?
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(height: 83,
                          margin: EdgeInsets.only(top:5,bottom: 5,right: 5),
                          color: Colors.brown,)),
                    Expanded(flex: 2,child: Container(height: 83,  margin: EdgeInsets.all(5),color: Colors.brown,)),

                    Expanded(flex: 1,child: Container(height: 83,  margin: EdgeInsets.only(top:5,bottom: 5,left: 5),color: Colors.brown,)),
                  ],
                )
                    : Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container( height: 83, margin:  EdgeInsets.only(top:5,bottom: 5,right: 5),color: Colors.brown,)),
                    Expanded(flex: 2,child: Container( height: 83, margin: EdgeInsets.all(5),color: Colors.brown,)),

                    Expanded(flex: 2,child: Container( height: 83, margin:  EdgeInsets.only(top:5,bottom: 5,left: 5),color: Colors.brown,)),
                  ],
                );
              }
              ),
            ),
          )),
    );
  }
}