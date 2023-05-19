import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(


              appBar: AppBar(

                title: Text(
                  "Watch",
                ),

                backgroundColor: Color.fromRGBO(72,65,106, 1),
              ),
              body: Container(
                child:Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white.withOpacity(0.1)),
                        shape: BoxShape.rectangle,
                        color: Color.fromARGB(255,68,108,159 ),

                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        boxShadow: [BoxShadow(offset: Offset(10, 10),blurRadius: 30,spreadRadius: 3, color:Colors.black26)]
                    ),

                    child: Center(child: Text("Flutter",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),

                  ),
                ),
                decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255,71,66,108 ),
                        Color.fromARGB(255, 40,135,218)
                      ],
                    )),
              )))));
}