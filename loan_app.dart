import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(LoanApp());
}

class LoanApp extends StatefulWidget {
  const LoanApp({super.key});

  @override
  State<LoanApp> createState() => _LoanAppState();
}
var slider1=0.0;
var slider2=0.0;
var slider3=0.0;
var x=slider2.toStringAsFixed(3);
var rateofInterest=slider2/12/100;
var answer=0.0;
class _LoanAppState extends State<LoanApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff20295B),
          appBar: AppBar(
            toolbarHeight: 150,
            leading: Align(
              alignment: Alignment(0,-0.40),
              child: Icon(Icons.grid_view_rounded)),
        // title: RichText(
        //   textAlign: TextAlign.center,
        //   text: TextSpan(children: [
        //   TextSpan(text: "EMI Calculator\n",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
        //      TextSpan(text: "\nYour Loan EMI is\n",style: TextStyle(fontSize:12,fontWeight: FontWeight.w300,)),
        //         TextSpan(text: "\n₹ ${answer.toStringAsFixed(2)}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
        //           TextSpan(text: "/ Month",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,)),
               
        // ])),
        title:Align(
          alignment: Alignment(-0.12, 0),
          child: Column(
       
          children: [
          
          Text("EMI Calculator",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,)),
           
           SizedBox(height: 10,),
           Text("Your Loan EMI is",style: TextStyle(fontSize:12,fontWeight: FontWeight.w300,)),
           SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
  Text("₹ ${answer.toStringAsFixed(2)}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)),
   Text("/ Month",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w200,))
        ]),
           ],),),

        backgroundColor: Color(0xff20295B),
bottomOpacity: 0.0,
elevation: 0.0,
      ),
      floatingActionButton: Center(
        child: Stack(
         
          children: [
            Positioned(
              top: 260,
              left: 100,
              child: Text("Loan Amount",style: TextStyle(color: Colors.grey.withOpacity(0.2),fontSize: 40,fontWeight: FontWeight.bold),)),
            
          
            Positioned(
              top: 420,
              
              left: 100,
              child: Text("Interest Rate",style: TextStyle(color: Colors.grey.withOpacity(0.2),fontSize: 40,fontWeight: FontWeight.bold))),
            Positioned(
              top: 570,
              left: 100,
              child: Text("Loan Tenure",style: TextStyle(color: Colors.grey.withOpacity(0.2),fontSize: 40,fontWeight: FontWeight.bold))),
          ],
        ),
      ),
      body: Container(
        child: Column(children: [
            SizedBox(height: 40,),
          Text("Loan Amount",style: TextStyle(fontSize: 24),),
             Text("\n${slider1.toInt()}",style: TextStyle(fontSize: 18),),
          Slider(value: slider1,
          max: 1000000,
          divisions: 10,
          activeColor: Colors.grey,
          inactiveColor: Colors.grey,
          thumbColor: Color(0xff20295B),
          onChanged: ( value){
            setState(() {
                  slider1=value  ;
            });
        
          }),
          SizedBox(height: 40,),
             Text("Interest Rate ",style: TextStyle(fontSize: 24),),
                Text("\n$slider2 %",style: TextStyle(fontSize: 18),),
          Slider(value: slider2,thumbColor: Color(0xff20295B),
           activeColor: Colors.grey,
          inactiveColor: Colors.grey,
          max: 100,
         
          onChanged: ( value1){
            setState(() {
                  slider2=value1  ;
            });
        
          }),
              SizedBox(height: 40,),
             Text("Loan Tenure ",style: TextStyle(fontSize: 24),),
              Text(" ${slider3.toInt()} Months",style: TextStyle(fontSize: 18),),
          Slider(value: slider3,thumbColor: Color(0xff20295B),
           activeColor: Colors.grey,
          inactiveColor: Colors.grey,
          max: 400,
       
          onChanged: ( value2){
            setState(() {
                  slider3=value2;
            });
        
          }),
          SizedBox(height: 50,),
          InkWell(
            onTap: (){
              setState(() {
              
               answer=(slider1 * rateofInterest * pow((1+rateofInterest), slider3) / ( pow((1+rateofInterest),slider3) -1));
              
              });
           
               
            },
            child: Center(
              child: Container(
                height:60,
                width: 240,
                decoration: BoxDecoration(color: Color(0xffE7EAFF),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1,color: Colors.grey)),
                child: Center(child: Text("Calculate",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 23,color: Color(0xff04125C)),)),
              
              ),
            ),
          ),
        ]),
        decoration: BoxDecoration(
          color: Colors.white,
       borderRadius: BorderRadius.vertical(top: Radius.circular(60)),
          
        ),
       
        
      ),
      ),
      
    );
  }
}
