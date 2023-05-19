
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(

          appBar: AppBar(
            title: Text(
              "A Shadow Button",
            ),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(0,150,136, 1),
          ),
          body: Center(child:Container(
            height: 70,
            width:170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                shape:BoxShape.rectangle,
                color: Colors.white,


                border: Border.all(color:Color.fromRGBO(0,150,136, 1),width: 1),
                boxShadow: [BoxShadow(  blurRadius: 30.0,
                    spreadRadius: 2,color:Color.fromRGBO(0,150,136, 1))]),
            child: Center(child: Text("Tap",style: TextStyle(color:Colors.black,fontWeight:FontWeight.bold,fontSize:20),)),)),
        ),
      )));
}