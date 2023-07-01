import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

TextEditingController minutecontroller = TextEditingController();
TextEditingController secondcontroller = TextEditingController();
int secondsum = 0;
int minutesum = 0;
int secondcount = 0;
bool check = false;

class _SecondPageState extends State<SecondPage> {
  _countdown() {
    setState(() {
      if (secondsum > 0) {
        Future.delayed(Duration(seconds: 1), () {
          secondsum = secondsum - 1;
          _countdown();
          // secondsum=secondsum-1;
          // if(secondsum!=-1&& minutesum !=-1)
          //   {
          //     print("If called");
          //     setState(() {
          //
          //         minutesum=minutesum-1;
          //       secondsum=59;
          //         _countdown();
          //
          //
          //
          //     });
          //
          //
          //
          //   }
          //
          // else{
          //  if(secondsum!=-1)
          //    {
          //      _countdown();
          //    }

          // }
        });
      } else if (minutesum != 0) {
        secondsum = 59;
        minutesum = minutesum - 1;
        Future.delayed(Duration(seconds: 1), () {
          secondsum = secondsum - 1;
          _countdown();
          // secondsum=secondsum-1;
          // if(secondsum!=-1&& minutesum !=-1)
          //   {
          //     print("If called");
          //     setState(() {
          //
          //         minutesum=minutesum-1;
          //       secondsum=59;
          //         _countdown();
          //
          //
          //
          //     });
          //
          //
          //
          //   }
          //
          // else{
          //  if(secondsum!=-1)
          //    {
          //      _countdown();
          //    }

          // }
        });
      } else {
        check = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Timer"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 150,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: minutecontroller,
                  decoration: InputDecoration(
                    hintText: "Enter the Minute",
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 40,
                width: 150,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: secondcontroller,
                  decoration: InputDecoration(
                    hintText: "Enter the Second",
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              minutesum = int.parse(minutecontroller.text);
              secondsum = int.parse(secondcontroller.text);

              print(secondcount);
              _countdown();
            },
            child: Container(
              height: 50,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Start Timer"),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            " $minutesum: $secondsum",
            style: TextStyle(fontSize: 40),
          ),
          check
              ? Text("Time is Over",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 30))
              : Text("")
        ],
      ),
    );
  }
}
