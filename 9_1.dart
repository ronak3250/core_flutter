import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(GalleryView());
}

class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

bool checked = true;

class _GalleryViewState extends State<GalleryView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          actions: [
            GestureDetector(
                onTap: () {
                  setState(() {
                    checked == true ? checked = false : checked = true;
                  });
                },
                child: Icon(Icons.apps))
          ],
          title: Text(
            "GALLERY VIEWER",
            style: TextStyle(letterSpacing: 5),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: checked == false
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/1.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/2.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/3.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/4.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/5.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1212693/pexels-photo-1212693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/776656/pexels-photo-776656.jpeg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/2563129/pexels-photo-2563129.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1198802/pexels-photo-1198802.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                ]))
            : SingleChildScrollView(
                child: Column(children: [
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/1.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/2.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/3.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/4.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(image: AssetImage("asset/images/5.jpg"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1212693/pexels-photo-1212693.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1200861/pexels-photo-1200861.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/2563129/pexels-photo-2563129.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  Container(
                      margin: EdgeInsets.all(5),
                      child: Image(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/1482476/pexels-photo-1482476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                ]),
              ),
      )),
    );
  }
}
