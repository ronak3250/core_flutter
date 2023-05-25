import 'package:demo3/Homepage.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Age",
      home: Homepage(),
    );
  }
}


var years = 0,
    mths = 0,
    dayss = 0,
    date1,
    date2 = 0,
    years1,
    months,
    weeks,
    vname;
int weelk1 = 0, weeks2 = 0, dq1 = 0, dq2 = 0;

enum EnumofYear {
  Jan,
  Feb,
  Mar,
  Apr,
  May,
  Jun,
  Jul,
  Aug,
  Sep,
  Oct,
  Nov,
  Dec,
}

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    EnumofYear.values.forEach((v) {
      if ((DateTime.now().month - 1) == (v.index)) {
        vname = v.name;
      }
    });
    super.initState();
  }

  final TextEditingController birth_dd = TextEditingController();
  final TextEditingController birth_mm = TextEditingController();
  final TextEditingController birth_yyyy = TextEditingController();
  final TextEditingController today_date = TextEditingController();
  void Agecalcalute(DateTime Now, DateTime Past) {
    years = Now.year - Past.year;
    mths = Now.month - Past.month;
    dayss = Now.day - Past.day;

    DateTime mytime = DateTime(Now.year + 1, Past.month, Past.day);
    print(mytime);
    print(DateTime.now());
    Duration diff = DateTime.now().difference(mytime);

    int days = diff.inDays;
    years1 = (days / 365).toInt();
    months = ((days - (years1 * 365)) / 30).toInt();
    weeks = 7 * ((days - (years1 * 365 + months * 30.44)) / 7).toDouble().abs();
    dq1 = weeks.toInt();
    dq2 = months.abs();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Age Calculator"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 32, 58, 67),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Today's Date")),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                    controller: today_date,
                    decoration: InputDecoration(
                      hintStyle:
                          TextStyle(color: Colors.black.withOpacity(0.7)),
                      hintText:
                          '${DateTime.now().day} $vname,${DateTime.now().year}   ',
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 4),
                      ),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Date of Birth")),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                          controller: birth_dd,
                          decoration: InputDecoration(
                            label: Center(
                                child: Text("DD",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.3)))),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                          controller: birth_mm,
                          decoration: InputDecoration(
                            label: Center(
                                child: Text("MM",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.3)))),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                            ),
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                          controller: birth_yyyy,
                          decoration: InputDecoration(
                            label: Center(
                                child: Text("YYYY",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.3)))),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        birth_dd.clear();
                        birth_mm.clear();
                        birth_yyyy.clear();
                        today_date.clear();
                        years = 0;
                        mths = 0;
                        dayss = 0;
                        dq1 = 0;
                        dq2 = 0;

                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 50),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Colors.black.withOpacity(0.4)),
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Text(
                        "Clear",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        setState(() {});
                        var newdate = today_date.text.toString().split('-');

                        Agecalcalute(
                            DateTime(
                              int.parse(newdate[2]),
                              int.parse(newdate[1]),
                              int.parse(newdate[0]),
                            ),
                            DateTime(
                                int.parse(birth_yyyy.text),
                                int.parse(birth_mm.text),
                                int.parse(birth_dd.text)));
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 50),
                        backgroundColor: Color.fromARGB(255, 19, 84, 122),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Present Age",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    )),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: 450,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        years == 0 ? "${years}\nYear" : "${years - 1}\nYear",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        mths == 0
                            ? "${mths.abs()}\nMM"
                            : "${mths.abs() + 2}\nMM",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$dayss\nDD",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 19, 84, 122),
                        const Color.fromARGB(255, 32, 58, 67),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                ),
                const SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Next Birthday",
                        style: TextStyle(fontWeight: FontWeight.w400))),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: 450,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "${dq2}\nMM",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("${dq1} \nDD",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 107, 190, 217),
                        const Color.fromARGB(255, 0, 106, 203),
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
