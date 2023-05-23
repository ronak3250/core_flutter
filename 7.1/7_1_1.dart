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
  int value =0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              leading: Icon(Icons.menu),
              title: Text("Calc"),
              centerTitle: true,
              backgroundColor: Color.fromRGBO(84, 117, 158, 1),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "$value",
                    style: TextStyle(fontSize: 40,color: Colors.black26),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: ()
                        {
                          value+=-2;
                          setState(() {

                          });
                        },
                        child: Container(
                          child: Center(child: Text("-2",style: TextStyle(color: Colors.white,fontSize: 30),)),
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(84, 117, 158, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: ()
                        {
                          value+=2;
                          setState(() {

                          });
                        },
                        child: Container(
                          child: Center(child: Text("+2",style: TextStyle(color: Colors.white,fontSize: 30),)),

                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(84, 117, 158, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: ()
                        {
                          value+=-4;
                          setState(() {

                          });
                        },
                        child: Container(
                          child: Center(child: Text("-4",style: TextStyle(color: Colors.white,fontSize: 30),)),

                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(84, 117, 158, 1),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(

                        onTap: ()
                        {
                          value+=4;
                          setState(() {

                          });
                        },
                        child: Container(
                          child: Center(child: Text("+4",style: TextStyle(color: Colors.white,fontSize: 30),)),

                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color.fromRGBO(84, 117, 158, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){
                      value=0;
                      setState(() {

                      });
                    },
                    child: Container(
                      child: Center(child: Text("Clear",style: TextStyle(color: Colors.white,fontSize: 30),)),

                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(84, 117, 158, 1),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}