import 'package:flutter/material.dart';

void main() {
runApp(MaterialApp(
debugShowCheckedModeBanner: false,
home: SafeArea(
child: Scaffold(
appBar: AppBar(
title: Text("Flutter App"),
centerTitle: true,
backgroundColor: Colors.redAccent,
leading: Icon(Icons.menu),

),
body: Center(child: Text("Red & White Group of Institutes \nOne Step in Charging Education
Chain...",textAlign: TextAlign.center,style: TextStyle(color: Colors.red,fontSize: 20),)),
)),
));
}