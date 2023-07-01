import 'package:flutter/material.dart';

class Experience extends StatefulWidget {


  @override
  State<Experience> createState() => _ExperienceState();

}
String? gender;
class _ExperienceState extends State<Experience> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white.withOpacity(0.95),
        appBar: AppBar(
          toolbarHeight: 120,
          centerTitle: true,
          title: Text("Experience"),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 700,
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
                            "Company Name",
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
                          hintText: "New Enterprise,San Francisco",
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
                            "Position",
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
                          hintText: "Flutter Developer",
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
                            "Roles(Optional)",
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

maxLines: 3,
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
                          hintText: "Working with team members to come up with new concepts and product analysis...",
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
                            "Employed Status",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 135,
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: const VisualDensity(
                                  horizontal: -4,
                                 ),
                              title: Text("Previously Employed",style: TextStyle(fontSize: 9),),
                              value: "Previously Employed",
                              groupValue: gender,
                              onChanged: (value){
                                setState(() {
                                  gender = value.toString();
                                });
                              },
                            ),
                          ),

                          Container(
                            height: 50,
                            width: 135,
                            child: RadioListTile(
                              contentPadding: EdgeInsets.zero,
                              visualDensity: const VisualDensity(
                                  horizontal: -4,
                                 ),
                              title: Text("Currently Employed",style: TextStyle(fontSize: 9),),
                              value: "Currently Employed",
                              groupValue: gender,
                              onChanged: (value){
                                setState(() {
                                  gender = value.toString();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1,),

                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Date Joined",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 120,
                                child: TextFormField(

                                  maxLines: 3,
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
                                        fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                                  ),
                                ),
                              ),

                            ],

                          ),
                          Spacer(flex: 1,),
                          gender=="Previously Employed"? Column(
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Date Exit",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )),
                              SizedBox(
                                height: 5,
                              ),

                            Container(
                                height: 50,
                                width: 120,
                                child: TextFormField(

                                  maxLines: 3,
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
                                        fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                                  ),
                                ),
                              )

                            ],

                          ):Text(""),
                        ],
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed: (){}, child: Text("Save"))

                    ],
                  ),
                ),


              ],
            ),
          ),
        ));
  }
}