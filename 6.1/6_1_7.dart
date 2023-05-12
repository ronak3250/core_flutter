import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border(
                left: BorderSide(width: 45, color: Colors.white),
                right: BorderSide(width: 45, color: Colors.white),
                top: BorderSide(
                    width: 30, color: Colors.black),
                bottom: BorderSide(
                    width: 30, color: Colors.black)),
          ),
          height: 180,
          width: 160,
        ),
      ),
      appBar: AppBar(
        title: Text("Opened Doors"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    
    )),
  ));
}
