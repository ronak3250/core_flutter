import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(child: Scaffold(
        backgroundColor:Color.fromARGB(255,139,195,74),
        appBar: AppBar(title:Text("My App"),centerTitle:true,backgroundColor:Color.fromARGB(255,139,195,74)),
        body:Center(child:Container(
          
        child:Center(child: Text("OOOO",style:TextStyle(fontSize:150,letterSpacing:-55,color:Colors.black45)),),
          
        
          height:320,
          width:320,
         decoration: BoxDecoration(
         
    border: Border.all(width: 30, color: Color.fromARGB(255,76,175,80)),
     color:Color.fromARGB(255,178,255,89)),
   
  ), 
          ),
          
        
        
        ),
    ),
  ));
}
