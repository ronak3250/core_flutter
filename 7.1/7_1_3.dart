import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatefulWidget {
  @override
  State<FirstApp> createState() => _FirstAppState();
}

bool check = false;
int indexvalue=0;


class _FirstAppState extends State<FirstApp> {
  var List1 = [

    Icons.add,
    Icons.album,
    Icons.arrow_back_ios_new,
    Icons.arrow_forward_ios,
    Icons.access_alarm,
    Icons.verified_user_sharp,
    Icons.account_circle_outlined,
    Icons.loop,
    Icons.shuffle,
    Icons.more,
    Icons.more_vert,
    Icons.height,
    Icons.phone,
    Icons.search,
    Icons.details,
    Icons.stop,
    Icons.play_arrow,
    Icons.apps,
    Icons.workspaces_outlined,
    Icons.wifi_lock,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
              appBar: AppBar(
                title: Text(
                  "Icons",
                  style: TextStyle(color: Colors.black),
                ),
                centerTitle: true,
                backgroundColor: Colors.white,
              ),
              body: Column(
                children:List.generate(5, (indexRow) =>


                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          if (indexRow == 0) ...[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  5,
                                      (index) =>

                                      Container(

                                        margin: EdgeInsets.all(10),
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(color: Colors.white),
                                          color: Color.fromRGBO(245, 245, 245, 1),
                                        ),
                                        child: Center(child: Icon(List1[indexvalue++])),

                                      ),

                                ),
                              ),
                            )
                          ]
                          else if(indexRow ==1)...[

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  4,
                                      (index) => Container(
                                    margin: EdgeInsets.all(10),
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: Colors.white),
                                      color: Color.fromRGBO(245, 245, 245, 1),
                                    ),
                                    child: Center(child: Icon(List1[indexvalue++])),
                                  ),
                                ),
                              ),
                            )
                          ]
                          else if(indexRow == 2 )...[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    3,
                                        (index) => Container(
                                      margin: EdgeInsets.all(10),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white),
                                        color: Color.fromRGBO(245, 245, 245, 1),
                                      ),
                                      child: Center(child: Icon(List1[indexvalue++])),
                                    ),
                                  ),
                                ),
                              )
                            ]else if(indexRow == 3)...[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    5,
                                        (index) => Container(
                                      margin: EdgeInsets.all(10),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white),
                                        color: Color.fromRGBO(245, 245, 245, 1),
                                      ),
                                      child: Center(child: Icon(List1[indexvalue++])),
                                    ),
                                  ),
                                ),
                              )
                            ]else if(indexRow == 4)...[
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: List.generate(
                                    3,
                                        (index) => Container(
                                      margin: EdgeInsets.all(10),
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(color: Colors.white),
                                        color: Color.fromRGBO(245, 245, 245, 1),
                                      ),
                                      child: Center(child: Icon(List1[indexvalue++])),
                                    ),
                                  ),
                                ),
                              )
                            ],

                        ],
                      ),
                    )
                ),

              )
          )
      ),
    );

  }
}
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(FirstApp());
// }
//
// class FirstApp extends StatefulWidget {
//   @override
//   State<FirstApp> createState() => _FirstAppState();
// }
//
// bool check = false;
// int indexvalue=0;
//
//
// class _FirstAppState extends State<FirstApp> {
//   List List1 = [
//     Icons.add,
//     Icons.album,
//     Icons.arrow_back_ios_new,
//     Icons.arrow_forward_ios,
//     Icons.access_alarm,
//     Icons.verified_user_sharp,
//     Icons.account_circle_outlined,
//     Icons.loop,
//     Icons.shuffle,
//     Icons.more,
//     Icons.more_vert,
//     Icons.height,
//     Icons.phone,
//     Icons.search,
//     Icons.details,
//     Icons.stop,
//     Icons.play_arrow,
//     Icons.apps,
//     Icons.workspaces_outlined,
//     Icons.wifi_lock,
//     Icons.account_circle_outlined,
//     Icons.loop,
//     Icons.shuffle,
//     Icons.more,
//     Icons.account_circle_outlined,
//     Icons.loop,
//     Icons.shuffle,
//     Icons.more,
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: SafeArea(
//           child: Scaffold(
//               appBar: AppBar(
//                 title: Text(
//                   "Icons",
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 centerTitle: true,
//                 backgroundColor: Colors.white,
//               ),
//               body: Column(
//                 children:List.generate(5, (indexRow) =>
//
//
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           if (indexRow == 0 || indexRow==3) ...[
//                             SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Row(
//                                 children: List.generate(
//                                   5,
//                                       (index) =>
//
//                                       Container(
//
//                                         margin: EdgeInsets.all(10),
//                                         height: 100,
//                                         width: 100,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(20),
//                                           border: Border.all(color: Colors.white),
//                                           color: Color.fromRGBO(245, 245, 245, 1),
//                                         ),
//                                         child: Center(child: Icon(List1[indexvalue++])),
//
//                                       ),
//
//                                 ),
//                               ),
//                             )
//                           ]
//                           else if(indexRow ==1 )...[
//
//                             SingleChildScrollView(
//                               scrollDirection: Axis.horizontal,
//                               child: Row(
//                                 children: List.generate(
//                                   4,
//                                       (index) => Container(
//                                     margin: EdgeInsets.all(10),
//                                     height: 100,
//                                     width: 100,
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       border: Border.all(color: Colors.white),
//                                       color: Color.fromRGBO(245, 245, 245, 1),
//                                     ),
//                                     child: Center(child: Icon(List1[indexvalue++])),
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ]
//                           else if(indexRow == 2 || indexRow ==4 )...[
//                               SingleChildScrollView(
//                                 scrollDirection: Axis.horizontal,
//                                 child: Row(
//                                   children: List.generate(
//                                     3,
//                                         (index) => Container(
//                                       margin: EdgeInsets.all(10),
//                                       height: 100,
//                                       width: 100,
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(20),
//                                         border: Border.all(color: Colors.white),
//                                         color: Color.fromRGBO(245, 245, 245, 1),
//                                       ),
//                                       child: Center(child: Icon(List1[indexvalue++])),
//                                     ),
//                                   ),
//                                 ),
//                               )
//                             ]
//                             else if(indexRow == 3 || indexRow==4)...[
//                                 SingleChildScrollView(
//                                   scrollDirection: Axis.horizontal,
//                                   child: Row(
//                                     children: List.generate(
//                                       5,
//                                           (index) => Container(
//                                         margin: EdgeInsets.all(10),
//                                         height: 100,
//                                         width: 100,
//                                         decoration: BoxDecoration(
//                                           borderRadius: BorderRadius.circular(20),
//                                           border: Border.all(color: Colors.white),
//                                           color: Color.fromRGBO(245, 245, 245, 1),
//                                         ),
//                                         child: Center(child: Icon(List1[indexvalue++])),
//                                       ),
//                                     ),
//                                   ),
//                                 )
//                               ]
//                               else if(indexRow == 4)...[
//                                   SingleChildScrollView(
//                                     scrollDirection: Axis.horizontal,
//                                     child: Row(
//                                       children: List.generate(
//                                         3,
//                                             (index) => Container(
//                                           margin: EdgeInsets.all(10),
//                                           height: 100,
//                                           width: 100,
//                                           decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(20),
//                                             border: Border.all(color: Colors.white),
//                                             color: Color.fromRGBO(245, 245, 245, 1),
//                                           ),
//                                           child: Center(child: Icon(List1[indexvalue++])),
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//
//                         ],
//                       ),
//                     )
//                 ),
//
//               )
//           )
//       ),
//     );
//
//   }
// }
