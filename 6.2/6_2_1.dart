import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              "Launch Button",
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(76, 175, 80, 1),
          ),
          body: Center(child:Container(
            height: 200,
            width:200,
            decoration: BoxDecoration(
                shape:BoxShape.circle,
                color: Colors.black,


                border: Border.all(color:Colors.white,width: 1),
                boxShadow: [BoxShadow(  blurRadius: 25.0,
                    spreadRadius: 10,color:Color.fromRGBO(76, 175, 80, 1))]),
            child: Center(child: Text("Go",style: TextStyle(color:Colors.white,fontSize:30),)),)),
        ),
      )));
}