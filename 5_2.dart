import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("My RNW"),centerTitle:true,backgroundColor:Colors.redAccent),
            body:  Center(
              child: RichText(
                textAlign:TextAlign.center,
                text: TextSpan(

                  children: <TextSpan>[
                    TextSpan(text: 'Red & White', style: TextStyle(decoration: TextDecoration.underline,fontWeight:FontWeight.w700,fontSize:60,color: Colors.redAccent.withAlpha(255))),
                    TextSpan(text: '\nMultimedia Education ',style: TextStyle(fontWeight:FontWeight.w600,fontSize:30,color: Colors.redAccent.withAlpha(255))),
                    TextSpan(text: '\nShaping "skills" for "scaling" higher...!!!',style: TextStyle(fontWeight:FontWeight.w500,fontSize:20,color: Colors.redAccent.withAlpha(255)))
                  ],
                ),
              ),
            )
        ),
      ),
    ),
  );
}
