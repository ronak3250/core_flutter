import 'dart:io';
void main()
{
  int size;
  List <int> newlist=[];
  print("Enter the size of Array");
  size=int.parse(stdin.readLineSync()!);
  print("Enter the Data");
  for(int i=0;i<size;i++)
  {
newlist.add(int.parse(stdin.readLineSync()!));
  }
  print("All Negative Numbers Are:\n");
newlist.forEach((element) {
  if(element<0)
  {
    print(element);
  }
});
}

___________________


import 'dart:io';
 void main() {
int size;
  List <int> newlist=[];
  print("Enter the size of Array");
  size=int.parse(stdin.readLineSync()!);
  print("Enter the Data");
  for(int i=0;i<size;i++)
  {
newlist.add(int.parse(stdin.readLineSync()!));
  }
  print("Maximum of Array List is :");
  newlist.sort();
  print(newlist[size-1]);
}
//__________________
import 'dart:io';
 void main() {
  int size,choice=0,addvalue,deletevalue;
  List <int> newlist=[];
  print("Enter the size of Array");
  size=int.parse(stdin.readLineSync()!);
  print("Enter the Data");
  for(int i=0;i<size;i++)
  {
newlist.add(int.parse(stdin.readLineSync()!));
  }

while( choice <=5 ){
 print("1.insert\n2.Delete\n3.Update \n4.Display\n5.Exit");
  print("Enter Your Choice!");
  choice=int.parse(stdin.readLineSync()!);
   switch (choice) {
    case 1:
          print("Enter the Data You Want to Add");
          addvalue=int.parse(stdin.readLineSync()!);
          newlist.add(addvalue);
          break;
    case 2:
          print("Which Element you Want to Delete");

          deletevalue=int.parse(stdin.readLineSync()!);
          newlist.remove(deletevalue);
          break;
    case 3:
        print("Enter the Element Index to Want to Update");

          var indexvalue=int.parse(stdin.readLineSync()!);
           print("Enter the Data You Want to Update");
         var updatevalue=int.parse(stdin.readLineSync()!);
          newlist[indexvalue]=updatevalue;
          break;

    case 4:
      print(newlist);
      break;
  case 5:
  exit(0);
  }
}

}

import 'dart:io';
void main()
{
  var list=[[0,0,0],[0,0,0],[0,0,0]];
    var list1=[[0,0,0],[0,0,0],[0,0,0]];

    var sum=[[0,0,0],[0,0,0],[0,0,0]];
    print("Enter the First Matrix Data:");
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
      print("Enter $i and $j Position Value :\n");
      list[i][j]=int.parse(stdin.readLineSync()!);
    }
  }

    print("\nEnter the Second Matrix Data:");
   for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
      print("Enter $i and $j Position Value :\n");
      list1[i][j]=int.parse(stdin.readLineSync()!);
    }
  }
   print("\nSum of Matric is:");
    for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {

      sum[i][j]=list[i][j]+list1[i][j];
    }
  }

  print(sum);

}

import 'dart:io';

void main() {
  var list = [
        [0, 0, 0],
        [0, 0, 0],
        [0, 0, 0]
      ],
      choice = 0,
      sum = 0,
      row = 0,
      rowsum = 0,
      column = 0,
      columnsum = 0,
      sumanti = 0,
      sumdia = 0;

  print("Enter the  Matrix Data:");
  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      print("Enter $i and $j Position Value :\n");
      list[i][j] = int.parse(stdin.readLineSync()!);
    }
  }
  print(
      "1.Sum of all elements\n2.sum of specific row \n 3.sum of specific column\n 4. sum diagonal elements \n 5.sum of antidiagonal elements\n 6. Press for exit");
  print("Enter Your Choice !");
  choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          sum += list[i][j];
        }
      }
      print("Sum of All Elements : $sum");

      break;
    case 2:
      print("Enter the Specific Row");
      row = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i == row) {
            rowsum += list[i][j];
          }
        }
      }
      print("sum fo $row is $rowsum");
      break;
    case 3:
      print("Enter the Specific Column");
      column = int.parse(stdin.readLineSync()!);
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (j == column) {
            columnsum += list[i][j];
          }
        }
      }

      print("sum fo $column is $columnsum");
      break;
    case 4:
     
      for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
          if (i == j) {
            sumdia += list[i][j];
          }
        }
      }

      print("sum fo Diagonal is $sumdia");
      break;
    case 5:
      for (int i = 2; i >= 0; i--) {
        for (int j = 2; j >= 0; j--) {
          if (i == j) {
            sumanti += list[i][j];
          }
        }
      }

      print("sum fo AntiDiagonal is $sumanti");
      break;
    default:
      print("Enter valid choice and Try again Later");
      exit(0);
  }
}
------------------------------------------------------------------------
import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Color.fromARGB(255,0,150,136),
            title: const Text(
              "🛍 List Of Fruits",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          body:Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "🍎 Apple",
                style:
                TextStyle(fontSize: 40,color:
                Colors.red, fontWeight: FontWeight.bold),
              ),
                  TextSpan(
                    text: "\n🍇 Greps",
                      style: TextStyle(
                          fontSize: 40,color:
                      Colors.purpleAccent, fontWeight: FontWeight.bold)),

                  TextSpan(
                    text:"\n🍒 Cherry",
                  style: TextStyle(
                  fontSize: 40,color:
                  Colors.deepPurple, fontWeight: FontWeight.bold)),

                  TextSpan(
                    text: "\n🍓 Strawberry",
                  style: TextStyle(
            fontSize: 40,color: Colors.pink,
                fontWeight: FontWeight.bold)),

                  TextSpan(
                    text:"\n🥭 Mango",
                      style: TextStyle(
                          fontSize: 40,color: Colors.orange,
                          fontWeight: FontWeight.bold))

              ,TextSpan(
                    text:"\n🍍 Pineapple",
                style: TextStyle(
                    fontSize: 40,color: Colors.green,
                    fontWeight: FontWeight.bold)),


                TextSpan(
                    text:"\n🍋 Lemon",
                        style: TextStyle(
                        fontSize: 40,color:
                        Colors.amberAccent, fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:"\n🍉 Watermelon",
                      style: TextStyle(
                          fontSize: 40,color:
                      Colors.lightGreen, fontWeight: FontWeight.bold))
                  ,
                  TextSpan(
                      text:"\n🥥 Coconut",
                      style: TextStyle(
                          fontSize: 40,color: Colors.brown,
                          fontWeight: FontWeight.bold))
                  ,



                ]
              ),
            ),
          )
      ),
    ),
  ));
}
_________________________________________________________________________________________________________________


import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.red,
            title: const Text(
              "Red & White",
              style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),

          body:Align(
            alignment: Alignment.center,

            child: RichText(



                text: const TextSpan(text: "             G",style: TextStyle( fontWeight:FontWeight.bold,color:Colors.green,fontSize:30),
                    children: [
                    TextSpan(text: "R",style:
                    TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                TextSpan(text: "APHICS\n",style:
                TextStyle(fontWeight:FontWeight.bold,color:Colors.green,fontSize:30)),
                       TextSpan(text: "    FLUTT",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30),
                          children: [TextSpan(text: "E",style:
                          TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                            TextSpan(text: "R",style:
                            TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
                          ]
                      ),
                      TextSpan(text: "\n          AN",style:
                      TextStyle(fontWeight:FontWeight.bold,
                          color:Colors.green,fontSize:30),

                          children: [
                            TextSpan(text: "D",style:
                            TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33,)),
                            TextSpan(text: "ROID",style:
                            TextStyle(fontWeight:FontWeight.bold,color:Colors.green,fontSize:30)),
                          ]
                      ),
              TextSpan(text: "\n DESIGN ",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.orange,fontSize:30)),
                  TextSpan(text: "& ",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                  TextSpan(text: "DEVELOP",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.orange,fontSize:30)),
              TextSpan(text: "\n              W",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33),),
                  TextSpan(text: "EB",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
              TextSpan(text: "\n         FAS",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.limeAccent,fontSize:30),
              ),
                      TextSpan(text: "H",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33),),
                      TextSpan(text: "ION",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.limeAccent,fontSize:30)),
              TextSpan(text: "\n  ANIMAT",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.teal,fontSize:30),),
                      TextSpan(text: "I",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),

                      TextSpan(text: "ON",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.teal,fontSize:30)),
              TextSpan(text: "\n               I",style: TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
                TextSpan(text: "T",style:
                TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),
                  TextSpan(text: "A-CS+",style:
                  TextStyle(fontWeight:FontWeight.bold,color:Colors.blue,fontSize:30)),
              TextSpan(text: "\n        GAM",style:
              TextStyle(fontWeight:FontWeight.bold,color:Colors.amber,fontSize:30),),
                      TextSpan(text: "E",style:
                      TextStyle(fontWeight:FontWeight.bold,color:Colors.red,fontSize:33)),







                    ]
            ),),
          )
      ),
    ),
  ));
 }
