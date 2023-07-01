import 'package:flutter/material.dart';
import 'package:quiz/FirstScreen.dart';
import 'package:quiz/Gameover.dart';

class WonScreen1 extends StatelessWidget {
   int label;

  WonScreen1(this.label);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/celebration.png",

                    height: 70,
                    width: 70,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Your Answers Is Correct ",
                    style: TextStyle(color: Colors.red, fontSize: 18),
                    textDirection: TextDirection.rtl,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "You Won",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
                  ),
                  //SizedBox(height: 30,),
                  Text(
                    "10000",
                    style: TextStyle(color: Colors.orangeAccent, fontSize: 30),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(160, 40),
                        backgroundColor: Color.fromRGBO(24, 25, 30, 1),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        )),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GameOver()));
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            ),
          ),


    );
  }
}
