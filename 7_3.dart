// import 'package:flutter/material.dart';
// void main()
// {
//   runApp(FirstApp());
// }
// class FirstApp extends StatefulWidget {
//
//   @override
//   State<FirstApp> createState() => _FirstAppState();
// }
// bool check=false;
// class _FirstAppState extends State<FirstApp> {
//   @override
//
//   Widget build(BuildContext context) {
//     return MaterialApp(
//
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//         child: Scaffold(
//           appBar: AppBar(title: Text("Open - Close Doors"),centerTitle: true,backgroundColor: Colors.black,),
//           body:Center(child: InkWell(
//             onDoubleTap: (){
//               check=true;
//               setState(() {
//
//               });
//             },
//             onTap:(){
//               check=false;
//               setState(() {
//
//               });
//             },
//             child: Container(
//               height: 200,
//               width: 120,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 border:
//                 check?Border(bottom: BorderSide(color: Colors.black,width: 10),
//                   top: BorderSide(color: Colors.black,width: 10),
//                   left: BorderSide(color: Colors.black,width: 30),
//                   right: BorderSide(color: Colors.black,width: 30),):
//                 Border(bottom: BorderSide(color: Colors.black,width: 10),
//                   top: BorderSide(color: Colors.black,width: 10),
//                   left: BorderSide(color: Color.fromRGBO(192,192,192,1),width: 30),
//                   right: BorderSide(color:Color.fromRGBO(192,192,192,1),width: 30),)
//
//
//
//
//                 ),
//               ),
//           ),
//           ),),
//         ),
//       );
//
//   }
//  }










//-----------------------------------------------------


// import 'package:flutter/material.dart';
//
//
//   void main() {
//     runApp(
//       MaterialApp(
//         debugShowCheckedModeBanner:false,
//         home: MyApp(),
//       ),
//     );
//   }
//
// List<String> date=[];
// List date1=[];
// var hour=DateTime.now().hour;
// var times=TimeOfDay(hour: hour, minute: 00);
// int hours=DateTime.now().hour+1;
// int range=20-hours;
// List x=[];
//
//
//
// class MyApp extends StatefulWidget {
//
//
//
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     List.generate(range, (index)
//     {
//
//       date1.add(times.toString());
//       hour++;
//
//
//     });
//
//
//
//     return  Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: () {
//
//         for (int i = 0; i < date1.length; i++)
//         {
//           x.add(date1[i].format(context));
//         }
//         setState(() {
//
//
//         });
//       },
//
//       ),
//         body: Center(
//           child: Container(
//             child: Text("${x}"),
//           ),
//         ),
//       );
//
//   }
// // }
// import 'package:flutter/material.dart';
// void main()
// {
//   runApp(Myapp());
// }
// class Myapp extends StatefulWidget {
//   const Myapp({Key? key}) : super(key: key);
//
//   @override
//   State<Myapp> createState() => _MyappState();
// }
// List<TextEditingController> _controllers = [];
//
// List<TextField> _fields = [];
// List<String> date=[];
// int hours=9;
// int range=20-hours;
// int rangelimit=0;
//
// class _MyappState extends State<Myapp> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     TextEditingController controller = TextEditingController();
//     return MaterialApp(
//       debugShowCheckedModeBanner:false,
//       home: SafeArea(
//         child: Scaffold(
//           appBar:AppBar(
//             title:Text("To-Do App"),
//             centerTitle:true,
//             backgroundColor: Color(0xFFFF5722),
//             actions:[GestureDetector(
//                 onTap:()
//                 {
// for(int i=0;i<date.length;i++)
//   {
//     print("TIME SLOT:"+ date[i].replaceAll("\n", "") +"\nTASK\t"+ _controllers[i].text);
//
//   }
//
//
//
//                 },
//                 child: Icon(Icons.apps))],
//           ),
//           body:SingleChildScrollView(
//             child: Column(
//               children: List.generate(rangelimit, (index) {
//
//                   return
//
//
//
//                     Row(
//
//                   children: [
//
//                     Expanded(
//                         flex: 1,
//                         child: Container(
//                           margin: EdgeInsets.all(10),
//                           height: 60,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(
//                                 width: 1, color: Color(0xff9B9B9B)),
//                           ),
//                           child: Center(
//                             child: Text(
//                               date[index] as String,
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                         )),
//                     Expanded(
//                         flex: 4,
//                         child: Container(
//                           height: 60,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border: Border.all(
//                                 width: 1, color: Color(0xff9B9B9B)),
//                           ),
//                           margin: EdgeInsets.all(10),
//                           padding: EdgeInsets.only(left: 10, top: 7),
//                           child: _fields[index],
//                         ))
//
//
//     ],
//
//                     );
//
//
//
//               }),
//             ),
//           ) ,
//           floatingActionButton: FloatingActionButton(
//             backgroundColor: Color(0XFFFF5722),
//             onPressed: ()
//             {
//               if(hours>12)
//               {
// int x=hours-12;
//                 date.add(x.toString() + ':00\n PM');
//                 hours++;
//               }
//               else
//               {
//
//                 date.add(hours.toString() +':00\n AM');
//                 hours++;
//
//               }
//
//
//               TextField field = TextField(
//                 controller: controller,
//                 textAlign: TextAlign.start,
//                 decoration: InputDecoration(
//
//                   focusedBorder: InputBorder.none,
//                   enabledBorder: InputBorder.none,
//                   hintText: "Enter Your To-Do here...",               hintStyle: TextStyle(color: Color(0xff9B9B9B)),
//                 ),
//               );
//
//               setState(() {
//                 if(range+1!=rangelimit){
//                   rangelimit++;
//                 }
//
//                 _controllers.add(controller);
//                 _fields.add(field);
//                 print(_controllers);
//               });
//             },
//             child: Icon(Icons.add),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(Bolt());
// }
//
// class Bolt extends StatelessWidget {
//   const Bolt({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Color.fromRGBO(33, 33, 33, 1),
//               centerTitle: true,
//               title: Text(
//                 "THE WALL",
//                 style: TextStyle(fontSize: 25),
//               ),
//             ),
//             body: Column(
//               children: List.generate(7, (index) {
//                 return index%2==0?
//                 Row(
//                   children: [
//                     Expanded(
//                         flex: 1,
//                         child: Container(height: 83,
//                           margin: EdgeInsets.only(top:5,bottom: 5,right: 5),
//                           color: Colors.brown,)),
//                     Expanded(flex: 2,child: Container(height: 83,  margin: EdgeInsets.all(5),color: Colors.brown,)),
//
//                     Expanded(flex: 1,child: Container(height: 83,  margin: EdgeInsets.only(top:5,bottom: 5,left: 5),color: Colors.brown,)),
//                   ],
//                 )
//                     : Row(
//                   children: [
//                     Expanded(
//                         flex: 2,
//                         child: Container( height: 83, margin:  EdgeInsets.only(top:5,bottom: 5,right: 5),color: Colors.brown,)),
//                     Expanded(flex: 2,child: Container( height: 83, margin: EdgeInsets.all(5),color: Colors.brown,)),
//
//                     Expanded(flex: 2,child: Container( height: 83, margin:  EdgeInsets.only(top:5,bottom: 5,left: 5),color: Colors.brown,)),
//                   ],
//                 );
//               }
//               ),
//             ),
//           )),
//     );
//   }
// }
import 'package:flutter/material.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}
List<TextEditingController> _controllers = [];

List<TextField> _fields = [];
List<String> date=[];
int hours=9;
int range=20-hours;
int rangelimit=0;

class _MyappState extends State<Myapp> {

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: SafeArea(
        child: Scaffold(
          appBar:AppBar(
            title:Text("To-Do App"),
            centerTitle:true,
            backgroundColor: Color(0xFFFF5722),
            actions:[GestureDetector(
                onTap:()
                {
                  for(int i=0;i<date.length;i++)
                  {
                    print("TIME SLOT:"+ date[i].replaceAll("\n", "") +"\nTASK\t"+ _controllers[i].text);

                  }



                },
                child: Icon(Icons.apps))],
          ),
          body:SingleChildScrollView(
            child: Column(
              children: List.generate(rangelimit, (index) {

                return



                  Row(

                    children: [

                      Expanded(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1, color: Color(0xff9B9B9B)),
                            ),
                            child: Center(
                              child: Text(
                                date[index] as String,
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 4,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 1, color: Color(0xff9B9B9B)),
                            ),
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(left: 10, top: 7),
                            child: _fields[index],
                          ))


                    ],

                  );



              }),
            ),
          ) ,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0XFFFF5722),
            onPressed: ()
            {
              if(hours>=12)
              {
                if(hours==12)
                  {int x=hours;
                    date.add(x.toString() + ':00\n PM');
                    hours++;
                  }
                else{
                  int x=hours-12;
                  date.add(x.toString() + ':00\n PM');
                  hours++;
                }

              }
              else
              {

                date.add(hours.toString() +':00\n AM');
                hours++;

              }


              TextField field = TextField(
                controller: controller,
                textAlign: TextAlign.start,
                decoration: InputDecoration(

                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  hintText: "Enter Your To-Do here...",               hintStyle: TextStyle(color: Color(0xff9B9B9B)),
                ),
              );

              setState(() {
                if(range+1!=rangelimit){
                  rangelimit++;
                }

                _controllers.add(controller);
                _fields.add(field);
                print(_controllers);
              });
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
