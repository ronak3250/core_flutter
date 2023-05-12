import "package:flutter/material.dart";
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home:SafeArea(
        child:Scaffold(
          bottomNavigationBar:Container(
            height:50,
            
            color:Colors.orange,
            child:Center(child:Text('Emoji',style:TextStyle(color:Colors.white,fontSize:20)))),
          floatingActionButton:Center(child:Container(height:250,width:250,child:Center(child:Text(" ●●",textAlign:TextAlign.center,style:TextStyle(fontSize:160,color:Colors.white))) )),
          body:Center(
            child: Container(
              decoration:BoxDecoration(
                color:Colors.white,
                shape:BoxShape.circle,
                border:Border.all(width:13,color:Colors.orange)
              ),
              height:250,
              width:250,
              child:Align(
              alignment:Alignment.topCenter,
              child:Container(
               transform:Matrix4.rotationX(0.4),
                decoration:BoxDecoration(
                color:Colors.orange,
                shape:BoxShape.circle,
              ),
                height:227,
              width:227,
              )
            )),
          )
        )
      )
    )
  );
}
__________________________________________________________________________________________________________

import "package:flutter/material.dart";
void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner:false,
      home:SafeArea(
        child:Scaffold(
          bottomNavigationBar:Container(
            height:50,
            
            color:Colors.orange,
            child:Center(child:Text('Emoji',style:TextStyle(color:Colors.white,fontSize:20)))),
          floatingActionButton:Center(child:Container(height:250,width:250,child:Center(child:Text(" ●●",textAlign:TextAlign.center,style:TextStyle(fontSize:160,color:Colors.white))) )),
          body:Center(
            child: Container(
              decoration:BoxDecoration(
                color:Colors.orange,
                shape:BoxShape.circle,
                border:Border.all(width:15,color:Colors.orange)
              ),
              height:270,
              width:270,
              child:Align(
              alignment:Alignment.topCenter,
              child:Container(
             margin: EdgeInsets.only(bottom: 10),
                decoration:BoxDecoration(
                color:Colors.orange,
                shape:BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.white,offset: Offset(0,20 ))]
              ),
                height:200,
              width:200,
              )
            )),
          )
        )
      )
    )
  );
}