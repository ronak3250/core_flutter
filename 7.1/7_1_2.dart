
import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  FirstApp({Key? key}) : super(key: key);

  @override
  State<FirstApp> createState() => _FirstAppState();

}

class _FirstAppState extends State<FirstApp> {


  Map List1={

    "Exit":Icons.exit_to_app,
    "Play":Icons.play_arrow,
    "Pause":Icons.pause,
    "Stop":Icons.stop,
    "Close":Icons.close_rounded,
    "Delete":Icons.delete,
    "Email":Icons.email,



  };



  @override
  Widget build(BuildContext context) {
    bool isvalid=true;
    var entryList = List1.entries.toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(238,238,238, 1),
          appBar: AppBar(
            leading: Icon(Icons.menu),
            title: Text("Map"),
            centerTitle: true,
            backgroundColor: Color.fromRGBO(33,150,243, 1),
          ),
          body:SingleChildScrollView(
              child: Center(child:
              Column(

                children:

                List.generate(entryList.length,(index){
                  return  Container(
                    margin: EdgeInsets.only(
                      top: 8,
                      bottom: 8,

                    ),
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    height: 80,


                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,

                    ),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [

                        Text(entryList[index].key,style:TextStyle(color: Colors.black,fontSize: 20)),
                        Icon(entryList[index].value,size:25,)
                      ],
                    ),
                  );;
                }),
              ),
              )


          ),
        ) ,
      ),
    );
  }
}