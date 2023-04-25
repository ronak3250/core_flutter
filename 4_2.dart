/*
Write a Dart Program to get and print total three employees infromation using user input Map datatype(use mapEntry class)
take below mentioned attributes for one employee.
1. id
2. name
3. age
4. salary

*/
import 'dart:io';
 void main() {
  List newlist=[];
for ( var i =0  ; i<=2  ; i ++){

  print("Enter the Id");
  String id=stdin.readLineSync()!;
    print("Enter the Name");
  String name=stdin.readLineSync()!;
    print("Enter the Age");
  String age=stdin.readLineSync()!;
    print("Enter the salary");
  String salary=stdin.readLineSync()!;

  MapEntry<String,String> entry1 = MapEntry('id', '$id');
  
  MapEntry<String,String> entry2 = MapEntry('name', '$name');
  
  MapEntry<String,String> entry3 = MapEntry('age', '$age');
  MapEntry<String,String> entry4 = MapEntry('salary', '$salary');

  Map map = Map.fromEntries([entry1, entry2,entry3,entry4]);
  
  newlist.add(map);
}


  var newmap=newlist.asMap();
  print(newmap);
}

/*
write a dart program to print all unique elements from a list.
elements may be redundant while entering into a list.use can only enter elements of string datatype.
*/

import 'dart:io';
 void main( ) {
  print("Enter the size of list ");
  var size;
  size=int.parse(stdin.readLineSync()!);
  List<String> l1=[];
  for ( var i = 0 ; i<size  ; i++ ){
    print("Enter the Data $i Index");
    var value;
    value=stdin.readLineSync()!;
    l1.add(value);
  
  }
  Set newset=l1.toSet();
  print(newset);
  
}