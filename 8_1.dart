import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const FirstApp());
}

class FirstApp extends StatefulWidget {
  const FirstApp({super.key});

  @override
  State<FirstApp> createState() => _FirstAppState();
}
double _value=0;
List a=[];
List myMap = [
  {"price": 5600, "gadgets": "Keyboard", "categories": "Computer Parts","id":1},
 { "price": 11000, "gadgets": "Mouse", "categories": "Computer Parts","id":2},
 {"price": 30444, "gadgets": "Printer", "categories": "Computer Parts","id":3},
   {"price": 40000, "gadgets": "Charger", "categories": "Computer Parts","id":4},
 {"price": 54000, "gadgets": "Laptop", "categories": "LifeStyle","id":5},
   {"price": 62300, "gadgets": "Telephone", "categories": "LifeStyle","id":6},
   {"price": 12000, "gadgets": "Washing Machine", "categories": "LifeStyle","id":7},
   {"price": 32000, "gadgets": "Phone", "categories": "LifeStyle","id":8},
   {"price": 51000, "gadgets": "Watch", "categories": "Wearable","id":9},
   {"price": 15000, "gadgets": "SmartTv", "categories": "Entertainment","id":10},
];
class _FirstAppState extends State<FirstApp> {
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white.withOpacity(0.95),
          appBar: AppBar(
            actions: const [Icon(Icons.apps)],
            centerTitle: true,
            title: const Text(
              "Product Filter",
            ),
          ),
          body: Column(children: [
           Slider(
  min: 0.0,
  max: 80000.0,
  value: _value,
  onChanged: (value) {
    a.clear();
 for(int i=0;i<myMap.length;i++)
 {
if(_value.toInt()>=(myMap[i]["price"])) {
  
print(myMap[i]["price"].toInt());
a.add(myMap[i]);
  
          
}

 }


    setState(() {
        
      _value = value;
    });
  },
),   
Text("All Products < Rs. ${_value.toInt()}",style: const TextStyle(fontWeight: FontWeight.bold),),

      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children:
            List.generate(a.length, (index) {
              return
              a.isNotEmpty?
               Container(
                
                decoration: BoxDecoration(color: Colors.white,
                boxShadow:  [
                  BoxShadow(offset: Offset(0, 2,),blurRadius: 2,color: Colors.black.withOpacity(0.2))
                ],
               
                        borderRadius: BorderRadius.circular(5.0),
                ),
                padding: const EdgeInsets.all(15),
              
                margin: const EdgeInsets.only(top:5,bottom: 5,left: 5,right: 5),
                height: 80,
                width: double.infinity,
                child: Row(
                  children: [
                      Text(a[index]["id"].toString(),style: const TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(width: 30,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                           Text( a[index]["gadgets"].toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                           const SizedBox(height: 6),
                           
                            Text( a[index]["categories"].toString(),style: const TextStyle(color: Colors.black38),),

                        ]
                      ),
                      
                    const Spacer(flex: 2,),
                    
                           Text("Rs.${a[index]["price"].toString()}",style: const TextStyle(color: Colors.black38), ),
                           
                        

                      
                      

                      

                       
                  ],
                ),
              )
              :Container();
            })
            
            
            
            
          ),
        ),
      ),
          ]),
          
        ),
      ),
    );
  }
}
