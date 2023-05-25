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
            backgroundColor: Colors.orange,
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(33, 33, 33, 1),
              centerTitle: true,
              title: Text(
                "SPLITTER",
                style: TextStyle(fontSize: 25),
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: Container(

                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(children: List.generate(100, (index) => Container(height: 70,color: Color.fromRGBO(255,193,7,1),child: Center(child: Text("${index+1}"),),margin: EdgeInsets.all(10),),) )),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromRGBO(255,87,34, 1),
                    child:
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: List.generate(100, (index) => Container(height: 250,width:70,color: Color.fromRGBO(231,231,231,1),child: Center(child: Text("${index+1}"),),margin: EdgeInsets.all(10),),) )),),
                ),




              ],
            ),
          )),
    );
  }
}
