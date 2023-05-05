import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home:SafeArea(
        child:
        Scaffold(
         
          backgroundColor:Colors.black,
          appBar:AppBar(
            leading:Icon(Icons.menu,color:Colors.black),
            backgroundColor:Color.fromARGB(255,255,193,7),
            centerTitle:true,
            title: Text("Flutter App",style:TextStyle(color:Colors.black)),)  ,
            body:Center(child: Text("Red & White",style:TextStyle( decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.double,decorationColor:Color.fromARGB(255,255,193,7),color: Colors.redAccent,fontSize:30)),),      )
      )
    )
  );
}