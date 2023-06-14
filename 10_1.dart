import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ListApp());
}

class ListApp extends StatefulWidget {
  const ListApp({super.key});

  @override
  State<ListApp> createState() => _ListAppState();
}

var profle_list = [
  {
    "id": 1,
    "name": "Reliance",
    "logo":
        "https://animationvisarts.com/wp-content/uploads/2016/10/tata-logo-design.jpg",
    "CEO": "Mukesh Bhai Ambani",
    "CEOpic":
        "https://upload.wikimedia.org/wikipedia/commons/6/69/Mukesh_Ambani.jpg",
        "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
  },
  {
    "id": 2,
    "name": "Apple",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/apple-logo.png",
    "CEO": "Tim Cook",
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)."
    ,"CEOpic":
        "https://upload.wikimedia.org/wikipedia/commons/e/e1/%D0%A2%D0%B8%D0%BC_%D0%9A%D1%83%D0%BA_%2802-09-2021%29.jpg",
  },
  {
    "id": 3,
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    "name": "Google",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/google-logo.png",
    "CEO": "Larry Page",
    "CEOpic":
        "https://www.businessinsider.in/thumb/msid-66188706,width-700,resizemode-4,imgsize-86797/Google-cofounders-Larry-Page-and-Sergey-Brin-are-worth-more-than-100-billion-see-how-they-spend-it-from-trapeze-lessons-to-a-600-foot-air-yacht.jpg",
  },
  {
    "id": 4,
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",

    "name": "Microsoft",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/microsoft-logo.png",
    "CEO": "Bill Gates",
    "CEOpic":
        "https://upload.wikimedia.org/wikipedia/commons/a/a8/Bill_Gates_2017_%28cropped%29.jpg",
  },
  {
    "id": 5,
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",

    "name": "Amazon",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/amazon-logo.png",
    "CEO": "Jeff Bezos",
    "CEOpic":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Jeff_Bezos_2016.jpg/170px-Jeff_Bezos_2016.jpg",
  },
  {
    "id": 6,
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    "name": "Facebook",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/facebook-logo.png",
    "CEO": "Mark Elliot Zuckerberg",
    "CEOpic":
        "https://upload.wikimedia.org/wikipedia/commons/1/18/Mark_Zuckerberg_F8_2019_Keynote_%2832830578717%29_%28cropped%29.jpg",
  },
  {
    "id": 7,
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",

    "name": "Coca-Cola",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/coca-cola-logo.png",
    "CEO": "James Quincey",
    "CEOpic":
        "https://t1.gstatic.com/licensed-image?q=tbn:ANd9GcQ5IwoNNvZH6djIu5MS3rrgmROSI7XED4xwbeWucFvLQoxfFPTTV__Thu8BBBEZsUFQ",
  },
  {
    "id": 8,
      "Desc":"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
    "name": "Mercedes-Benz",
    "logo":
        "https://s3.amazonaws.com/cdn.designcrowd.com/blog/100-Famous-Brand%20Logos-From-The-Most-Valuable-Companies-of-2020/mercedes-benz-logo.png",
    "CEO": "Ola Källenius",
    "CEOpic":
        "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcQpJ7wgH24gnxBbomUKOm_o7IVMxE6wSZdCUoC3zffbFVoCv5kF1DTJNSfv1932FMC9",
  },
];

class _ListAppState extends State<ListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen()
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "MNC CEOs",
            style: TextStyle(letterSpacing: 4),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: List.generate(profle_list.length, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(id: profle_list[index] as Map )),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(profle_list[index]["logo"].toString()),
                      SizedBox(
                        width: 10,
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: profle_list[index]["name"].toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        TextSpan(
                            text: "\n${profle_list[index]["CEO"]}",
                            style:
                                TextStyle(color: Colors.black45, fontSize: 15)),
                      ])),
                      Spacer(
                        flex: 3,
                      ),
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            NetworkImage("${profle_list[index]["CEOpic"]}"),
                        backgroundColor: Colors.transparent,
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ));
  }
}
class DetailsScreen extends StatelessWidget {

  final id;
  const DetailsScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("Detail Page",style: TextStyle(letterSpacing: 5),),),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
          
          children: 
            [
          SizedBox(height: 30,),
          // ignore: avoid_print
             Row(
          children: [
             CircleAvatar(
                            radius: 50.0,
                            backgroundImage:
                                NetworkImage("${id["CEOpic"]}"),
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(width: 10,),
             RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: id["name"].toString(),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900)),
                            TextSpan(
                                text: "\nCEO",
                                style:
                                    TextStyle(color: Colors.black45, fontSize: 20,fontWeight: FontWeight.w400)),
                          ])),
            
          ],
            ),
            SizedBox(height: 30,),
             Align(
          alignment: Alignment.centerLeft,
          child: Text("Company Details",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),))
            ,
            SizedBox(height: 10,),
            Row(
          children: [
                Image.network(id["logo"].toString(),height: 150,
            width: 150,),
            SizedBox(width: 5,),
            Text(id["name"],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),)
            
          ],
            ),
             SizedBox(height: 30,),
             Align(
          alignment: Alignment.centerLeft,
          child: Text("Company Description",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w700),))
            ,
            SizedBox(height: 10,),
             Align(
          alignment: Alignment.centerLeft,
          
          child: Text(id["Desc"],textAlign:TextAlign.justify,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),))
            ,
            ]
                  
          ),
        ),
      ),
    );
  }
}
