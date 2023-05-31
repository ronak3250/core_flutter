import 'package:flutter/material.dart';
double value1=70;
  double value2=25;
generatecontainer(String text,Color color)
{
  value1=value1+35;
  value2=value2+32;
  return Container(
  
    height: 150,
  
    width: 150,
  
    decoration:BoxDecoration(
      boxShadow: [BoxShadow(color: Colors.black45,blurRadius: 10,spreadRadius: 1)],
  
      color: color,
  
      borderRadius: BorderRadius.circular(25)) ,
  
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 10,
          child: Text(text,style: TextStyle(color: Colors.white ,fontSize: 20,fontWeight:FontWeight.bold),)),
      ],
    ),);
}
 List myMap = [
  {"color":"Purple", "name":Colors.purple},
 { "color": "Indigo", "name":  Colors.indigo},
 {"color": "LightBlue", "name":  Colors.lightBlue},
   {"color": "Green", "name": Colors.green},
 {"color": "Amber", "name":  Colors.amber},
   {"color": "Orange", "name": Colors.orange},
   {"color": "RedAccent", "name": Colors.redAccent},
   
];
void main()
{
  runApp(FirstApp());
}
class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
  bottomOpacity: 0.0,
  elevation: 0.0,

  scrolledUnderElevation: 0,
        title: Text("Stack App",style: TextStyle(color: Colors.black),),centerTitle: true,),

body:Stack(children: List.generate(7,(index){

return Positioned(
  top:value1,
  left:value2,
  child: generatecontainer(myMap[index]["color"],myMap[index]["name"] 
  )
  );
        }) ),

        ),
      
    );
  }
}
