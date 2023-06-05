import 'dart:math';
import 'package:flutter/material.dart';

void main()
{
  runApp(LotteryApp());

}
class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  @override
  Widget build(BuildContext context) {
  Color container_color= Color((Random().nextDouble() * 0xFFFFFF).toInt());
  Color container_color1= Color((Random().nextDouble() * 0xFFFFFF).toInt());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
appBar: AppBar(
  backgroundColor:container_color.withOpacity(0.8),
  title: Text("Lottery App"),centerTitle: true,actions: [Icon(Icons.workspaces_outline),



],),

body: Column(
  children: [
    SizedBox(height: 120,),
    Container(
      color: container_color.withOpacity(0.9),
      
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Container(
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color:container_color1.withOpacity(0.6),
             
      ),
 
        
          
          height: 60,width: 75,
        child: Center(child: Text((Random().nextInt(9) + 1) .toString(),style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),),
        Container(
           decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color:container_color1.withOpacity(0.5),
             
      ),
        height: 60,width: 75,
        child: Center(child: Text((Random().nextInt(9) + 1).toString() ,style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),),
        Container(
 decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          color:container_color1.withOpacity(0.5),
             
             
      ),
           height: 60,width: 75,
        child: Center(child: Text((Random().nextInt(9) + 1) .toString(),style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)),),


      ],),
    ),
    SizedBox(
      height: 200,
    ),
    Center(
      child: InkWell(
        onTap: (){
          setState(() {
            
          });
        },
        child: Container(
        decoration: BoxDecoration(
          color: container_color1.withOpacity(1.0),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 2,color:container_color.withOpacity(1.0) )
        ),
        height: 60,
        width: 120 ,
        
        child: Center(child: Text("Get Lottery "))),),
    )

  ],
),
    )),);
  }
}
