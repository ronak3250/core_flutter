
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(72,65,106,1),
          appBar: AppBar(
              title: Text(
                "Gradient Button",
              ),
              centerTitle: true,
              backgroundColor: Color.fromRGBO(72,65,106,1)
          ),
          body: Center(child:Container(
            height: 70,
            width:170,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(147,47,181, 1),
                Color.fromRGBO(43,141,237,1),
              ]),
              borderRadius: BorderRadius.all(Radius.circular(35)),
              shape:BoxShape.rectangle,
              color: Colors.white,


              border: Border.all(color:Colors.white,width: 1),
            ),
            child: Center(child: Text("Flutter",style: TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:20),)),)),
        ),
      )));
}