import 'package:flutter/material.dart';
import 'dart:math';

import 'package:quiz/Lost.dart';
import 'package:quiz/Result.dart';

import 'finalresult.dart';

int indexvalue=0;
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}
int marks=0;
var data= [
        {
           
            "question": "1. What was the name of the security vulnerability found in Bash in 2014?",
            "correct_answer": "Shellshock",
            "answers": [
                "Heartbleed",
                "Bashbug",
                "Shellshock",
                "Stagefright"
            ]
        },
        {
          
            "question": "2. What is the name of the process that sends one qubit of information using two bits of classical information?",
            "correct_answer": "Quantum Teleportation",
            "answers": [
                "Super Dense Coding",
                "Quantum Entanglement",
                "Quantum Teleportation",
                "Quantum Programming",
            ]
        },
        {
            "question": "3. Which of these is not a key value of Agile software development?",
            "correct_answer": "Comprehensive documentation",
            "answers": [
                "Individuals and interactions",
                "Customer collaboration",
                 "Comprehensive documentation",
                "Responding to change",
            ]
        },
        {
           
            "question": "4. What does the International System of Quantities refer 1024 bytes as?",
            "correct_answer": "Kibibyte",
            "answers": [
                "Kylobyte",
                "Kilobyte",
                "Kibibyte",
                "Kelobyte",
            ]
        },
        {
            
            "question": "5. Released in 2001, the first edition of Apple&#039;s Mac OS X operating system (version 10.0) was given what animal code name?",
            "correct_answer": "Cheetah",
            "answers": [
                "Puma",
                "Cheetah",
                "Tiger",
                "Leopard"
            ]
        },
        {            "question": "6. Dutch computer scientist Mark Overmars is known for creating which game development engine?",
            "correct_answer": "Game Maker",
            "answers": [
                "Stencyl",
                "Construct",
                 "Game Maker",
                "Torque 2D"
            ]
        },
        {
            
            "question": "7. What is the name given to layer 4 of the Open Systems Interconnection (ISO) model?",
            "correct_answer": "Transport",
            "answers": [
                "Session",
                "Data link",
                "Network",
                "Transport"
            ]
        },
        {
           
            "question": "8. Which of these is not a layer in the OSI model for data communications?",
            "correct_answer": "Connection Layer",
            "answers": [
                "Application Layer",
                "Transport Layer",
                "Connection Layer",
                "Physical Layer",
            ]
        },
        {
            
            "question": "9. What is the codename of the eighth generation Intel Core micro-architecture launched in October 2017?",
            "correct_answer": "Coffee Lake",
            "answers": [
              "Coffee Lake",
                "Sandy Bridge",
                "Skylake",
                "Broadwell"
            ]
        },
        {
           
            "question": "10. Lenovo acquired IBM&#039;s personal computer division, including the ThinkPad line of laptops and tablets, in what year?",
            "correct_answer": "2005",
            "answers": [
                "1999",
                "2002",
                "2005",
                "2008"
            ]
        }
    ];
   
class _FirstScreenState extends State<FirstScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    Color _randomColor =
        Colors.primaries[Random().nextInt(Colors.primaries.length)];

    return SafeArea(
        child: Scaffold(
            body: 
             Container(
              child: Column(
                  children: [
                    Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.all(40),
                child: Center(child: Text(data[indexvalue]["question"].toString(),textAlign:TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900),),),
                      color: _randomColor,
                    )),
                    Expanded(
              child: Container(
                      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: ()
                    {
            
                       ((data[indexvalue]["answers"]as Iterable).elementAt(0).toString()==data[indexvalue]["correct_answer"].toString() )
                      ?
                     indexvalue!=9?  {
                             indexvalue++,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen( marks+=1000),
                ),
              ),
             

                          }   :
                           {
                             indexvalue=0,
                             marks=0,
                             
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen1( marks+=1000),
                ),
              ),
             

                          }  

                        
                      :
                     {   
                                indexvalue=0,
                                marks=0,
                                 Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>LoseScreen(),
                ),
              )
                                
                               };
            
                    
                
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1B20),
                      ),
                      
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text((data[indexvalue]["answers"]as Iterable).elementAt(0).toString(),
                          textAlign: TextAlign.center,
                              style: TextStyle(fontWeight:FontWeight.bold,color: Color(0xff5F6365)))),
                    ),
                  ),
                  InkWell(
                    onTap: ()
                    {
            
                    ((data[indexvalue]["answers"]as Iterable).elementAt(1).toString()==data[indexvalue]["correct_answer"].toString() )  
                      ?
                     
                     indexvalue!=9?  {
                             indexvalue++,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen( marks+=1000),
                ),
              ),
             

                          }   :
                           {
                             indexvalue=0,
                             marks=0,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen1( marks+=1000),
                ),
              ),
             

                          }   
                      :
                      {   
                                indexvalue=0,
                                marks=0,
                                 Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>LoseScreen(),
                ),
              )
                                
                               };
            
                    
                
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1B20),
                      ),
                      
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text((data[indexvalue]["answers"]as Iterable).elementAt(1).toString(),
                          textAlign: TextAlign.center,
                              style: TextStyle(fontWeight:FontWeight.bold,color: Color(0xff5F6365)))),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   InkWell(
                    onTap: ()
                    {
            
                       ((data[indexvalue]["answers"]as Iterable).elementAt(2).toString()==data[indexvalue]["correct_answer"].toString() )
                      ?
                     indexvalue!=9?  {
                             indexvalue++,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen( marks+=1000),
                ),
              ),
             

                          }   :
                           {
                             indexvalue=0,
                             marks=0,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen1( marks+=1000),
                ),
              ),
             

                          }  
                               :
                               {   
                                indexvalue=0,
                                marks=0,
                                 Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>LoseScreen(),
                ),
              )
                                
                               };
                   
            
                    
                
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1B20),
                      ),
                      
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text((data[indexvalue]["answers"]as Iterable).elementAt(2).toString(),
                          textAlign: TextAlign.center,
                              style: TextStyle(fontWeight:FontWeight.bold,color: Color(0xff5F6365)))),
                    ),
                  ),
                   InkWell(
                    onTap: ()
                    {
            
                        ((data[indexvalue]["answers"]as Iterable).elementAt(3).toString()==data[indexvalue]["correct_answer"].toString() )
                      ?
                     indexvalue!=9?  {
                             indexvalue++,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen( marks+=1000),
                ),
              ),
             

                          }   :
                           {
                             indexvalue=0,
                             marks=0,
                            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                  
                  WonScreen1( marks+=1000),
                ),
              ),
             

                          }  
                      :
                      {   
                                indexvalue=0,
                                marks=0,
                                 Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>LoseScreen(),
                ),
              )
                                
                               };
            
                    
                
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1C1B20),
                      ),
                      
                      height: 50,
                      width: 150,
                      child: Center(
                          child: Text((data[indexvalue]["answers"]as Iterable).elementAt(3).toString(),
                          textAlign: TextAlign.center,
                              style: TextStyle(fontWeight:FontWeight.bold,color: Color(0xff5F6365)))),
                    ),
                  ),
                ],
              )
                      ]),
                      color: Colors.black,
                    )),
                  ],
                ),
            )
            ),
            );
  }
}
