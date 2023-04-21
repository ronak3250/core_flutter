
/*Write a Dart program to concate list element
value with hello.
For exmple,
input: [1, 2, 3]
output: [1 hello, 2 hello, 3 hello] */

void main()
{
  List list1=[1,2,3];
  List b=[];
 
for (var i = 0; i < list1.length; i++) {
  b.add("${list1[i]} Hello");

}
print(b);

 var numbers = [1, 2, 3, ];
  var sum = numbers.reduce((v, e) {
    if(v==1)
    {
      print('${v} Hello ');
    }
    print('${e} Hello ');
    
    return 0;
  });
  
  for (var i = 0; i < list1.length; i++) {
    list1[i]=('${list1[i]} hello') ; 
  }
 

  print(list1);
}

/*
Write a Dart program to create a list which
contains all Indian states.
Add all indian states in list by user input.
After that print all states using any type of loop.*/

import 'dart:io';

void main(){

   var size;
   List list1=[];
   print("How many State you Want to Enter ?");
   size=int.parse(stdin.readLineSync()!);
   print("Enter the $size of States");
   for(int i=0;i<size;i++)
   {
    print("Enter the $i no of States:");
list1.add(stdin.readLineSync());
   }
   list1.forEach((element) {
    print(element);
   });


  }
// _________________________________________________________
  import 'dart:io';

void main(){

   var size;
   List list1=[];
   print("How many State you Want to Enter ?");
   size=int.parse(stdin.readLineSync()!);
   print("Enter the $size of States");
 var newlist=List.generate(size,(index){
  list1.add(stdin.readLineSync()!);
 });
 print("\nStates Are :");
   list1.forEach((element) {
    print(element);
   });


  }
