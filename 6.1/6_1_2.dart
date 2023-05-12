import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(child: Scaffold(
        appBar: AppBar(title:Text("Mission of RNW"),centerTitle:true,backgroundColor:Colors.redAccent),
        body:Center(child:Container(
          height:100,
          width:350,
          decoration: BoxDecoration(
color:Color.fromARGB(255,252,200,200 ),
            border: Border(
              left: BorderSide( //                   <--- right side
                color: Colors.redAccent,
                width: 10.0,
              ),
            )
          ),
          
        child:Center(child:RichText(
          
    text: TextSpan(
          
          children: <TextSpan>[
           
            TextSpan(text: 'Shaping "skills" for "scaling" higher',style: TextStyle(fontWeight:FontWeight.w800,fontSize:18,color: Colors.black.withAlpha(255)))
           , TextSpan(text: '\n- RNW ',style: TextStyle(fontWeight:FontWeight.w400,fontSize:18,color: Colors.black.withAlpha(255))),
          
          ],
    ),
  ),
        )
        ),),
          
       
   
  ), 
          ),
          
        
        
        ),
    
  );
}