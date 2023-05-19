
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              "Dark Shadow Button",
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(255,82,82, 1),
          ),
          body: Center(child:Container(
            height: 60,
            width:200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                shape:BoxShape.rectangle,
                color: Colors.black,


                border: Border.all(color:Colors.red,width: 1),
                boxShadow: [BoxShadow(  blurRadius: 30.0,
                    spreadRadius: 3,color:Colors.red)]),
            child: Center(child: Text("Tap",style: TextStyle(color:Colors.white,fontSize:20),)),)),
        ),
      )));
}