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
                "BOLT",
                style: TextStyle(letterSpacing: 10,fontSize: 25),
              ),
            ),
            body: Row(
              children: [
                Expanded(child: Container(  color: Colors.yellow,),flex: 2,),

                Expanded(child: Container(
                  child: Center(
                      child:  Text("⚡︎",style: TextStyle(fontSize: 40),)
                  ),
                  color:Color.fromRGBO(33, 33, 33, 1),
                ),flex:1),
                Expanded(child: Container(  color:Colors.yellow),flex:2),

              ],
            ),
          )),
    );
  }
}
