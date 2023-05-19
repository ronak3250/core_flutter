import 'package:flutter/material.dart';
void main()
{
  runApp(FirstApp());
}
class FirstApp extends StatefulWidget {

  @override
  State<FirstApp> createState() => _FirstAppState();
}
bool check=false;
class _FirstAppState extends State<FirstApp> {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Open - Close Doors"),centerTitle: true,backgroundColor: Colors.black,),
          body:Center(child: InkWell(
            onDoubleTap: (){
              check=true;
              setState(() {

              });
            },
            onTap:(){
              check=false;
              setState(() {

              });
            },
            child: Container(
              height: 200,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                border:
                check?Border(bottom: BorderSide(color: Colors.black,width: 10),
                  top: BorderSide(color: Colors.black,width: 10),
                  left: BorderSide(color: Colors.black,width: 30),
                  right: BorderSide(color: Colors.black,width: 30),):
                Border(bottom: BorderSide(color: Colors.black,width: 10),
                  top: BorderSide(color: Colors.black,width: 10),
                  left: BorderSide(color: Color.fromRGBO(192,192,192,1),width: 30),
                  right: BorderSide(color:Color.fromRGBO(192,192,192,1),width: 30),)




                ),
              ),
          ),
          ),),
        ),
      );

  }
 }