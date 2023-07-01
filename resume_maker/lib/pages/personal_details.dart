import 'package:flutter/material.dart';

class PersonalScreen extends StatefulWidget {
  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  final _formKey = GlobalKey<FormState>();

  String? gender;
bool value=false;

  bool value1=false;

  bool value2=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white.withOpacity(0.95),
        appBar: AppBar(
          toolbarHeight: 120,
          centerTitle: true,
          title: Text("Personal Details"),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(30),
                  margin: EdgeInsets.all(30),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),

                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "DOB",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(


                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color:
                                Colors.black.withOpacity(0.3)), //<-- SEE HERE
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color:
                                Colors.black.withOpacity(0.3)), //<-- SEE HERE
                          ),
                          border: InputBorder.none,
                          hintText: "DD/MM/YYYY",
                          hintStyle: TextStyle(
                              fontSize: 20, color: Colors.grey.withOpacity(0.8)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Marital Status",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                      RadioListTile(
                        title: Text("Single"),
                        value: "Single",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),

                      RadioListTile(
                        title: Text("Married"),
                        value: "Married",
                        groupValue: gender,
                        onChanged: (value){
                          setState(() {
                            gender = value.toString();
                          });
                        },
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Languages Known",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:Row(
                      children: [
                        Checkbox(

                          value: this.value,
                          onChanged: ( value) async {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                        SizedBox(width: 5,),
                        Text("English",style: TextStyle(
                          color: Colors.grey.withOpacity(0.9)
                        ),)
                      ],
                    )
                     ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:Row(
                            children: [
                              Checkbox(

                                value: this.value1,
                                onChanged: ( value) async {
                                  setState(() {
                                    this.value1 = value!;
                                  });
                                },
                              ),
                              SizedBox(width: 5,),
                              Text("Hindi",style: TextStyle(
                                  color: Colors.grey.withOpacity(0.9)
                              ),)
                            ],
                          )
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child:Row(
                            children: [
                              Checkbox(

                                value: this.value2,
                                onChanged: ( value) async {
                                  setState(() {
                                    this.value2 = value!;
                                  });
                                },
                              ),
                              SizedBox(width: 5,),
                              Text("Gujarati",style: TextStyle(
                                  color: Colors.grey.withOpacity(0.9)
                              ),)
                            ],
                          )
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Nationality",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(


                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color:
                                Colors.black.withOpacity(0.3)), //<-- SEE HERE
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color:
                                Colors.black.withOpacity(0.3)), //<-- SEE HERE
                          ),
                          border: InputBorder.none,
                          hintText: "Indian",
                          hintStyle: TextStyle(
                              fontSize: 20, color: Colors.grey.withOpacity(0.8)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(onPressed: (){}, child:Text("SAVE"))

                    ],
                  ),
                ),


              ],
            ),
          ),
        ));
  }
}