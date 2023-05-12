  import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(0,150,136, 1),
            border: Border(
                left: BorderSide(width: 40, color: Color.fromRGBO(51,171,160,1)),
                right: BorderSide(width: 40, color: Color.fromRGBO(51,171,160,1)),
                top: BorderSide(
                    width: 30, color: Color.fromRGBO(77,182,172, 1)),
                bottom: BorderSide(
                    width: 30, color: Color.fromRGBO(77,182,172, 1))),
          ),
          height: 200,
          width: 200,
        ),
      ),
      appBar: AppBar(
        title: Text("3D"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0,150,136, 1),
      ),
      
    )),
  ));
}
