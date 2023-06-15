import 'package:flutter/material.dart';

void main() {
  runApp(const FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
  home:FirstScreen(),
         routes: {
        'display_pg' : (ctx)=>SecondScreen(),
      },
  //     initialRoute: '/',
  // routes: {
  //   // When navigating to the "/" route, build the FirstScreen widget.
  //   '/': (context) => const FirstScreen(),
  //   // When navigating to the "/second" route, build the SecondScreen widget.
  //   '/second': (context) => const SecondScreen(),
  // },
         
         );
  }
}

var data = [
  {
    "id": 1,
    "comicname": "Captain America",
    "image":
        "https://www.freepnglogos.com/uploads/avengers-png/captain-america-png-16.AkTcLqukxTgRYCtSqYh4gtBKrYvJfvLsCMSDN4mjHKQ",
    "realname": "Steven Grant Rogers",
    "Desc":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
  },
  {
    "id": 2,
    "comicname": "Hulk",
    "image":
        "https://www.freepnglogos.com/uploads/avengers-png/red-hulk-portrait-png-15.png",
    "realname": "Robert Bruce Banner",
    "Desc":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
  },
  {
    "id": 3,
    "comicname": "Iron Man",
    "image":
        "https://www.freepnglogos.com/uploads/iron-man-png/avengers-infinity-iron-davidbksandrade-19.HoqnPaQGdlxFM3fXFG2fhWm1EvKGjW6ClFUSE_c2YdE",
    "realname": "Robert Downey Jr.",
    "Desc":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
  },
  {
    "id": 4,
    "comicname": "Thor",
    "image":
        "https://www.freepnglogos.com/uploads/avengers-png/flying-thor-hammer-png-7.png",
    "realname": "Chris Hemsworth",
    "Desc":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
  },
  {
    "id": 5,
    "comicname": "Ant-Man",
    "image": "https://freepngimg.com/thumb/antman/5-2-ant-man-picture.png",
    "realname": "Paul Rudd",
    "Desc":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
  },
];

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});
void navigateNextPage(BuildContext ctx,index)
{
  Navigator.of(ctx).pushNamed(
    'display_pg',arguments: {
      'names' : data[index] as Map,
      
  }
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff240046),
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "MARVEL UNIVERSE",
          style: TextStyle(letterSpacing: 5),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Align(
              alignment: Alignment(-0.70, 0),
              child: Text(
                "AVENGERS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(data.length, (int index) {
                  return Container(
                    height: 440,
                    width: 255,
                    child: Stack(
                      children: [
                        Positioned(
                          top: 80,
                          left: 10,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.4),
                                        spreadRadius: 4,
                                        blurRadius: 5)
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xff50138A),
                                ),
                                        height: 320,
                                width: 235,
                                margin: EdgeInsets.symmetric(horizontal: 1),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    margin: const EdgeInsets.only(
                                        bottom: 30, left: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                    text: data[index]
                                                            ["comicname"]
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 23,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                TextSpan(
                                                    text:
                                                        "\n${data[index]["realname"].toString()}",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white
                                                            .withOpacity(0.6))),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: GestureDetector(
                                            onTap: () {
                                              navigateNextPage(context,index);
                                             
                                            },
                                            child: Container(
                                              height: 30,
                                              width: 120,
                                              decoration: BoxDecoration(
                                                color: Color(0xff160427),
                                                borderRadius:
                                                    BorderRadius.circular(40),
                                              ),
                                              child: const Center(
                                                  child: Text(
                                                "KNOW MORE",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              )),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Image.network(
                          data[index]["image"].toString(),
                          height: 250,
                          width: 250,
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {

  const SecondScreen({super.key });

  @override
  Widget build(BuildContext context) {
     final routeArgs =
        ModalRoute.of(context)?.settings?.arguments as Map;
    final name = routeArgs['names'];
    

    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
appBar: AppBar(title: Text("Marvel Character"),centerTitle: true,backgroundColor: Color(0xff10002B),),
body: SingleChildScrollView(
  child:   Container(
    margin:EdgeInsets.symmetric(horizontal: 10),
    child: Column(children: [
    
     Container(
       decoration: BoxDecoration(
      color: Colors.white,
     
      boxShadow: [
      
      BoxShadow(
        color: Color(0xffA699BB),
        offset: Offset(0,4),
        
       blurRadius: 2,
       spreadRadius: 1,
      )
    ],
    ),
    height: 400,
    width: double.infinity,
      child: Image.network("${name["image"]}"),
    
      
    
     ),
    SizedBox(
      height: 20,
    ),
     Container(
      padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
     
      boxShadow: [
      
      BoxShadow(
        color: Colors.orange.withOpacity(0.6),
        offset: Offset(0,3),
        
       blurRadius: 2,
       spreadRadius: 1,
      )
    ],
    ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: 
        
        TextSpan(
        
          children: [
        
            TextSpan(
        
              text: name["realname"].toString(),style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold)
        
            ),
        
            TextSpan(text:"\n${name["comicname"].toString()}",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.6),))
        
          ]
        
        )),
      ),
    
     ),
    SizedBox(
      height: 20,
    ),
     Container(
    color: Colors.white,
    padding: EdgeInsets.all(10),
      child: Text(name["Desc"].toString(),textAlign: TextAlign.justify,),
    
     )
    
    
    
    ]),
  ),
),
    );
  }
}
