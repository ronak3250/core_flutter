import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(DiceApp());
}
class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

int right=1;
int left=1;
class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(

        body:
         Container(
          child: Column(children: [
      SizedBox(height: 120,),
Text("Total Amount ${left+right}",style: TextStyle(fontSize: 25),),
SizedBox(height: 120,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
  Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 15),

      child: Image.asset("Assets/Images/$right.png")),
  ),
  
    Expanded(
      child: Container(
         margin: EdgeInsets.symmetric(horizontal: 15  ),
      
        child: Image.asset("Assets/Images/$left.png")),
    ),
],),
SizedBox(
  height: 80,
),
GestureDetector(
  onTap: (){
setState(() {
 right=Random().nextInt(6) + 1;
 left=Random().nextInt(6) + 1;
});
  },
  child:   Container(
  
    height: 120,
  
    width: 300,
  
    child: Align(
  
    child:Text("Roll Dice",style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),),
  
  
  
  ),
  
   decoration: BoxDecoration(
  
              image: DecorationImage(
  
              image: AssetImage("Assets/Images/Button.png"),
  
               fit: BoxFit.fill,
  
              ),
  
            ),
  
  ),
)

        ]),
          decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage("Assets/Images/Background.png"),
             fit: BoxFit.cover,
            ),
          ),
        
      
        
         
      )),
    ));
  }
}
