import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(child: Scaffold(
        appBar: AppBar(title:Text("Mix-up"),centerTitle:true,backgroundColor:Colors.redAccent),
        body:Center(child: Container(height:400,
        color: Colors.blueAccent,
        child:Align
        (
          alignment: Alignment.bottomRight,
          child: Container(
            child:Align
            (
              alignment: Alignment.bottomRight,
              child: Container(
                height:300,width:300,
                color:Colors.pink,
                child:Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child:Align(
                      alignment: Alignment.topLeft,
                      child:Container(height:200,width:200,color:Colors.green
                      ,child:Align(alignment: Alignment.center,child:Container(
                        height: 150,
                        width:150,
                        color:Color.fromRGBO(100,255,218,0.9),
                      )))
                    ),
                     height:250,width:250,
                color:Colors.orange,
                  ),
                ),
              )),
            height:350,width:350,color:Colors.yellow))),
        )
          
       
   
  ), 
          ),
          
        
        
        ),
    
  );
}