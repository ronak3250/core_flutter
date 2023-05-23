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


  var List1=[1,2,3,4,5,6,7,8,9];



  @override
  Widget build(BuildContext context) {



    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
            child: Scaffold(
                floatingActionButton: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: ()
                      {
                        List1.add(
                            List1.last+1
                        );
                        setState(() {

                        });
                      },
                      child: Container(
                        child: Center(child: Text("+",style: TextStyle(color: Colors.white,fontSize: 40),),),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff244D61),
                            shape: BoxShape.circle
                        ),
                      ),),
                    SizedBox(width: 10,),

                    InkWell(
                      onTap: ()
                      {
                        List1.remove(
                            List1.last
                        );
                        setState(() {

                        });
                      },
                      child: Container(

                        child: Center(child: Text("-",style: TextStyle(color: Colors.white,fontSize: 40),),),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Color(0xff244D61),
                            shape: BoxShape.circle
                        ),
                      ),)
                  ],
                ),
                backgroundColor: Color.fromRGBO(238,238,238, 1),
                appBar: AppBar(

                  title: Text("Dynamic List"),
                  centerTitle: true,
                  backgroundColor: Color.fromRGBO(36,77,97, 1),
                ),
                body:SingleChildScrollView(
                  child: Center(child:
                  Column(

                    children:
                    List.generate(List1.length, (index)
                    {
                      return Container(
                        decoration: BoxDecoration(
                          color: index %2==0 ?Color(0xff75E2FF):Color(0xff5689C0),
                          borderRadius: BorderRadius.circular(20),

                        ),
                        margin: EdgeInsets.all(10),

                        height: 80,
                        child: Center(child: Text(
                          "${List1[index]}", style: TextStyle(color: Colors.white,fontSize: 20),
                        ),),
                      );
                    }





                    ),
                  ) ,
                  ),
                ))));
  }
}