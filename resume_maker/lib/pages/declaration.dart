import 'package:flutter/material.dart';

class Declaration extends StatefulWidget {
  const Declaration({super.key});

  @override
  State<Declaration> createState() => _DeclarationState();
}
bool isSwitched = false;
final _formKey = GlobalKey<FormState>();
class _DeclarationState extends State<Declaration> {

  @override
  Widget build(BuildContext context) {
    void toggleSwitch(bool value) {

      if(isSwitched == false)
      {
        setState(() {
          isSwitched = true;

        });

      }
      else
      {
        setState(() {
          isSwitched = false;

        });

      }
    }
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white.withOpacity(0.95),
        appBar: AppBar(
          toolbarHeight: 120,
          centerTitle: true,
          title: Text("Declaration"),
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
                      Row(
                        children: [
                          Image.asset("assets/images/declaration.png",height: 40,width: 40,),
                          Spacer(flex: 3,),
                          Switch(
                            onChanged: toggleSwitch,
                            value: isSwitched,
                            activeColor: Colors.grey,
                            inactiveThumbColor: Colors.redAccent,
                            thumbColor: MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.disabled)) {
                                  return Colors.blue.withOpacity(.48);
                                }
                                return Colors.blue;
                              },
                            ),
                          //  thumbColor: MaterialStateColor[Colors.blue],


                          ),
                        ],
                      )
                      ,
                      SizedBox(
                        height: 10,
                      ),
                      isSwitched? Container(
                       child: Column(
                         children: [
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
                               hintText: "Description",
                               hintStyle: TextStyle(
                                   fontSize: 20, color: Colors.grey.withOpacity(0.8)),
                             ),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Divider(
                             thickness: 1,
                           ),
                           SizedBox(
                             height: 10,
                           ),


                           Row(
                             children: [
                               Column(
                                 children: [
                                   SizedBox(
                                     height: 5,
                                   ),
                                   Align(
                                       alignment: Alignment.topRight,
                                       child: Text(
                                         "Date",
                                         style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 14,
                                           fontWeight: FontWeight.w700,
                                         ),
                                       )),
                                   SizedBox(
                                     height: 15,
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
                               Column(
                                 children: [
                                   SizedBox(
                                     height: 5,
                                   ),
                                   Align(
                                       alignment: Alignment.center,
                                       child: Text(
                                         "Place(Inteview Venue\n/city)",
                                         style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 14,
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
                                         hintText: "Eg.Ahmedabad",
                                         hintStyle: TextStyle(
                                             fontSize: 14, color: Colors.grey.withOpacity(0.8)),
                                       ),
                                     ),
                                   )

                                 ],

                               )
                             ],
                           ),
                           SizedBox(height: 10,),
                           ElevatedButton(onPressed: (){}, child: Text("Save"))
                         ],
                       ),
                     ):Text(""),



                    ],
                  ),
                ),


              ],
            ),
          ),
        ));
  }
}
