import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255,0,150,136),
            title: const Text(
              "🛍 List Of Fruits",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          body:Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "🍎 Apple",
                style:
                TextStyle(fontSize: 40,color:
                Colors.red, fontWeight: FontWeight.bold),
              ),
                  TextSpan(
                    text: "\n🍇 Greps",
                      style: TextStyle(
                          fontSize: 40,color:
                      Colors.purpleAccent, fontWeight: FontWeight.bold)),

                  TextSpan(
                    text:"\n🍒 Cherry",
                  style: TextStyle(
                  fontSize: 40,color:
                  Colors.deepPurple, fontWeight: FontWeight.bold)),

                  TextSpan(
                    text: "\n🍓 Strawberry",
                  style: TextStyle(
            fontSize: 40,color: Colors.pink,
                fontWeight: FontWeight.bold)),

                  TextSpan(
                    text:"\n🥭 Mango",
                      style: TextStyle(
                          fontSize: 40,color: Colors.orange,
                          fontWeight: FontWeight.bold))

              ,TextSpan(
                    text:"\n🍍 Pineapple",
                style: TextStyle(
                    fontSize: 40,color: Colors.green,
                    fontWeight: FontWeight.bold)),


                TextSpan(
                    text:"\n🍋 Lemon",
                        style: TextStyle(
                        fontSize: 40,color:
                        Colors.amberAccent, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:"\n🍉 Watermelon",
                      style: TextStyle(
                          fontSize: 40,color:
                      Colors.lightGreen, fontWeight: FontWeight.bold))
                  ,
                  TextSpan(
                      text:"\n🥥 Coconut",
                      style: TextStyle(
                          fontSize: 40,color: Colors.brown,
                          fontWeight: FontWeight.bold))
                  ,



                ]
              ),
            ),
          )
      ),
    ),
  ));
}
_________________________________________________________________________________________________________________


import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: const Text(
              "Red & White",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          body:Align(
            alignment: Alignment.center,

            child: RichText(



                text: const TextSpan(text: "             G",style: TextStyle( fontWeight:FontWeight.bold,color:Colors.green,fontSize:30),
                    children: [
                    TextSpan(text: "R",style:
                    TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                TextSpan(text: "APHICS\n",style:
                TextStyle(fontWeight:FontWeight.bold,color:Colors.green,fontSize:30)),
                       TextSpan(text: "    FLUTT",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30),
                          children: [TextSpan(text: "E",style:
                          TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                            TextSpan(text: "R",style:
                            TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
                          ]
                      ),
                      TextSpan(text: "\n          AN",style:
                      TextStyle(fontWeight:FontWeight.bold,
                          color:Colors.green,fontSize:30),

                          children: [
                            TextSpan(text: "D",style:
                            TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33,)),
                            TextSpan(text: "ROID",style:
                            TextStyle(fontWeight:FontWeight.bold,color:Colors.green,fontSize:30)),
                          ]
                      ),
              TextSpan(text: "\n DESIGN ",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.orange,fontSize:30)),
                  TextSpan(text: "& ",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                  TextSpan(text: "DEVELOP",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.orange,fontSize:30)),
              TextSpan(text: "\n              W",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33),),
                  TextSpan(text: "EB",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
              TextSpan(text: "\n         FAS",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.limeAccent,fontSize:30),
              ),
                      TextSpan(text: "H",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33),),
                      TextSpan(text: "ION",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.limeAccent,fontSize:30)),
              TextSpan(text: "\n  ANIMAT",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.teal,fontSize:30),),
                      TextSpan(text: "I",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),

                      TextSpan(text: "ON",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.teal,fontSize:30)),
              TextSpan(text: "\n               I",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
                TextSpan(text: "T",style:
                TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                  TextSpan(text: "A-CS+",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
              TextSpan(text: "\n        GAM",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.amber,fontSize:30),),
                      TextSpan(text: "E",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),







                    ]
            ),),
          )
      ),
    ),
  ));
 }