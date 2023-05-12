import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(76,175,80, 1),
            border: Border(
                left: BorderSide(width: 80, color: Color.fromRGBO(76,175,80,1)),
                right: BorderSide(width: 80, color: Color.fromRGBO(76,175,80,1)),
                top: BorderSide(
                    width: 85, color: Color.fromRGBO(114,192,117, 1)),
                bottom: BorderSide(
                    width: 85, color: Color.fromRGBO(114,192,117, 1))),
          ),
          height: 200,
          width: 200,
        ),
      ),
      appBar: AppBar(
        title: Text("Letter Cover"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(76,175,80, 1),
      ),
      
    )),
  ));
}
