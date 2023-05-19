
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(

              backgroundColor: Color.fromRGBO(37,140,234,1),
              appBar: AppBar(

                title: Text(
                  "An Indian Flag",
                ),
                centerTitle: true,
                backgroundColor: Color.fromRGBO(37,140,234, 1),
              ),
              body: Center(child:Container(
                height: 200,
                width:300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.2,
                        0.5,

                        0.8,
                      ],
                      colors: [
                        Color.fromRGBO(255,87,34, 1),
                        Colors.white,
                        Color.fromRGBO(56,142,60,1),
                      ]),

                  shape:BoxShape.rectangle,
                  color: Colors.white,


                  border: Border.all(color:Colors.white,width: 1),
                ),
                child: Center(child: Text("✴",style:TextStyle(fontSize: 60,color: Color.fromRGBO(0,0,139,1)))),
              ),
              )))));
}