import 'package:flutter/Material.dart';
import 'package:quiz/FirstScreen.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Congratulations",
                    style: TextStyle(color: Colors.grey.withOpacity(0.4), fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),

                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Game Over",
                    style: TextStyle(color: Colors.grey, fontSize:20),
                  ),
                  //SizedBox(height: 30,),

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
                          MaterialPageRoute(builder: (context) => FirstScreen()));
                    },
                    child: Text('Restart',style: TextStyle(fontSize: 20,color: Colors.grey.withOpacity(0.8)),),
                  ),
                ],
              ),
            ),
          ),


    );
  }
}
