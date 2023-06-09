import 'package:flutter/material.dart';

void main() {
  runApp(Instragram());
}

class Instragram extends StatefulWidget {
  const Instragram({super.key});

  @override
  State<Instragram> createState() => _InstragramState();
}

bool story=false;
class _InstragramState extends State<Instragram> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
bottomOpacity: 0.0,
elevation: 0.0,
leading: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 35,),
actions: [Icon(Icons.more_horiz,color: Colors.black,size: 35,)],
          centerTitle: true,
          title: Text("ronakpithava_official",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 23),),
        ),
        floatingActionButton: Align(
              alignment: Alignment(-0.5,-0.6),
               child: GestureDetector(
                onTap: (){
                  
                
                  if(story)
                  {
                    story=false;
                    
                  }
                  else{
                    story=true;
                  }
                    setState(() {
                    
                  }); 
                },
                 child: Container(
                  
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: story?Colors.grey:Colors.green,
                      shape: BoxShape.circle,
                      
                  ),
                  child: story?Icon(Icons.remove,size: 17,):Icon(Icons.add,size: 17,),
                 ),
               ),
             ),
        body: Column(
         
          children: [
            
           
         Row(
           children: [
            
             
             Container(
              
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: story?Colors.green:Colors.grey,width: 5)
              ),
               child: CircleAvatar(
                      radius: 45.0,
                      backgroundImage:
                          NetworkImage("https://media.licdn.com/dms/image/C4E03AQEqxknsPpoxNw/profile-displayphoto-shrink_800_800/0/1650509849276?e=2147483647&v=beta&t=WsCD8L93G56M9iKnbM4GwbcMryA6ok2_s9A0r3ljwk0"),
                      backgroundColor: Colors.transparent,
                    ),
             ),
              
                  Spacer(flex: 1,),
                  Text("8\n Post",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                 Spacer(flex: 1,),
                  Text("85K\n Followers",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
               Spacer(flex: 1,),
                  Text("0\n Follwing",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            Spacer(flex: 1,),
           ],
         ),
Align(
  alignment: Alignment.centerLeft,
  
  child:   Container(
    margin: EdgeInsets.only(left: 10,top: 10),
    child: RichText(text: TextSpan(children: [
    
    
    
    TextSpan(text: "Ronak Pithava",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16)),
    
    
    
    TextSpan(text: "\nJAY MURLIDHAR MAHARAJ 🚩\n",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 16)),
    
    
    
    
    
    
    
    ])),

  ),
),
Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
  height: 40,
  width: double.infinity,
  decoration: BoxDecoration(
    color: Colors.white70,
    borderRadius: BorderRadius.circular(5),
    border: Border.all(width: 1,color: Colors.grey)
  ),
  child: Center(child: Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),),
     
        

          Divider(thickness: 1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              Icon(Icons.grid_on,size: 30,),
              Icon(Icons.assignment_ind_outlined ,size: 30,)
            ],
          ),
          SizedBox(
            height: 10,
          ),
      Row(
    children: [
        Expanded(
            child: Divider(
              thickness: 2,
              color: Colors.black,
            )
        ),       

          

        Expanded(
            child:Text(""),
        ),
    ]
),
          SizedBox(height: 20,),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                   
                   Expanded(child:Container(
                    margin: EdgeInsets.all(5),
                    child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                    Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                     Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                     
                    ],
                  ),
                     Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                      Row(
                       children: [
                        Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                         Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                          Expanded(child:Container( margin: EdgeInsets.all(5),child: Image.network("https://wallpaperaccess.com/full/757572.jpg"),)),
                           
                       ],
                     ),
                ],
              ),
            ),
          )
           
         
            ],
        ),
      )),
    );
  }
}
