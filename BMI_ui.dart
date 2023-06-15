import 'package:flutter/material.dart';

void main() {
  runApp(const BMIApp());
}

class BMIApp extends StatefulWidget {
  const BMIApp({super.key});

  @override
  State<BMIApp> createState() => _BMIAppState();
}

class _BMIAppState extends State<BMIApp> {
  @override
  var _value = 1.0;
  var age=0;
  var weight=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff090E21),
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: const Text(
            "BMI Calculator",
            style: TextStyle(fontSize: 30),
          ),
          centerTitle: true,
        ),
        body: Container(

          padding: const EdgeInsets.all(10),
                //margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: const BoxDecoration(
                  // borderRadius: BorderRadius.circular(10),
                  color: Color(0xff090E21),
                ),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1D1E33),
                        ),
                        child: Column(children: [
                          Icon(Icons.female,
                              size: 120, color: Color(0xffEB1555), weight: 0.5),
                          Text(
                            "Female",
                            style: TextStyle(color: Color(0xffEB1555), fontSize: 18),
                          )
                        ]),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1D1E33),
                        ),
                        child: Column(children: [
                          Icon(
                            Icons.male,
                            size: 120,
                            color: Colors.white,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ]),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
           color: Color(0xff1D1E33),
           borderRadius: BorderRadius.circular(10)
                  ),

                  height: 220,
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text("HEIGHT",
                        style: TextStyle(color: Colors.white30, fontSize: 18)),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "${_value.round()}",
                          style: TextStyle(fontSize: 40)),
                      TextSpan(text: " cm"),
                    ])),
                    SizedBox(
                      height: 20,
                    ),
                    Slider(
                      value: _value,
                      max: 350.0,
                      activeColor: Colors.white,
                      inactiveColor: Colors.white,
                      thumbColor: Color(0xffEB1555),
                      onChanged: ((value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                    ), ],),),
       SizedBox(height: 20,),
                    Row(
                      children: [

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                       color: Color(0xff1D1E33),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 160,

                                                    child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Text("Weight",style: TextStyle(fontSize: 14,color: Colors.white,),),
                                SizedBox(height: 10,),
                                Text("$weight",style: TextStyle(fontSize: 40,color: Colors.white,),),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.center,
                                  children: [    GestureDetector( onTap: (){
                                    setState(() {
                                         weight=weight-1;
                                    });

                                    },
                                    child: Container(
                                     height: 40,
                                     width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: Colors.white24,
                                      ),
                                      child: Icon(Icons.remove,color: Colors.white,)),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                           weight=weight+1;
                                      });

                                    },
                                    child: Container(
                                      height: 40,
                                     width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: Colors.white24,
                                      ),
                                      child: Icon(Icons.add,color: Color(0xffEB1555),)),
                                  ),
                                  ],)
                              ],
                                                    ),
                                                  ),
                            ),

                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                       color: Color(0xff1D1E33),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              margin: EdgeInsets.symmetric(horizontal: 20),
                                height: 160,

                                                    child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Text("age",style: TextStyle(fontSize: 14,color: Colors.white,),),
                                SizedBox(height: 10,),
                                Text("$age",style: TextStyle(fontSize: 40,color: Colors.white,),),
                                SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.center,
                                  children: [    GestureDetector(
                                     onTap: (){
                                      setState(() {
                                          age=age-1;
                                      });

                                    },
                                    child: Container(
                                     height: 40,
                                     width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: Colors.white24,
                                      ),
                                      child: Icon(Icons.remove,color: Colors.white,)),
                                  ),
                                  SizedBox(width: 10,),
                                  GestureDetector(
                                    onTap: (){
                                      setState(() {
                                         age=age+1;
                                      });

                                    },
                                    child: Container(
                                      height: 40,
                                     width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle, color: Colors.white24,
                                      ),
                                      child: Icon(Icons.add,color: Color(0xffEB1555),)),
                                  ),
                                  ],)
                              ],
                                                    ),
                                                  ),
                            ),

                      ],
                    ),
                    SizedBox(height: 30,),
                  Container(
                    height: 80,
                    width: double.infinity  ,

                    child: Center(child: Text("Calculate",style: TextStyle(fontSize: 40,color: Colors.white),)),
                  decoration: BoxDecoration(color: Color(0xffEB1555),borderRadius: BorderRadius.circular(80)),

                  )

              ],),
          ),
              )

          ),
        ),

    );
  }
}
