import 'package:flutter/material.dart';
import 'package:resume_maker/pages/achievements.dart';
import 'package:resume_maker/pages/carrier_objective.dart';
import 'package:resume_maker/pages/contact_info.dart';
import 'package:resume_maker/pages/declaration.dart';
import 'package:resume_maker/pages/education.dart';
import 'package:resume_maker/pages/experiences.dart';
import 'package:resume_maker/pages/personal_details.dart';
import 'package:resume_maker/pages/projects.dart';
import 'package:resume_maker/pages/references.dart';
import 'package:resume_maker/pages/technical_skills.dart';
var routes=[
  {

  }
];
var Listdata = [
  {
    "image": "assets/images/contact_info.png",
    "name": "Contact info",
    "route":Contactscreen(),
  },
  {
    "image": "assets/images/briefcase.png",
    "name": "Carrier Objective",
    "route":Carrier(),
  },
  {
    "image": "assets/images/user.png",
    "name": "Personal Details",
    "route":PersonalScreen(),
  },
  {
    "image": "assets/images/mortarboard.png",
    "name": "Education",
    "route":Education(),
  },
  {
    "image": "assets/images/thinking.png",
    "name": "Experiences",
    "route":Experience(),
  },
  {
    "image": "assets/images/skill.png",
    "name": "Technical Skills",
    "route":TechnicalScreen(),
  },
  
  {
    "image": "assets/images/project.png",
    "name": "Projects",
    "route":ProjectScreen(),
  },
  {
    "image": "assets/images/experience.png",
    "name": "Achievements",
    "route":AchievementsScreen(),
  },
  {
    "image": "assets/images/handshake.png",
    "name": "References",
    "route":ReferenceScreen(),
  },
  {
    "image": "assets/images/declaration.png",
    "name": "Declaration",
    "route":Declaration(),
  }
];

class ContainScreen extends StatelessWidget {
  const ContainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Align(
            alignment: Alignment(0,-0.6),
            child: Icon(Icons.arrow_back)),

        toolbarHeight: 140,
        title: Column(children: [
          Align(
              alignment: Alignment.topCenter, child: Text("Resume Workspace")),
          SizedBox(
            height: 50,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "\nBuild Options",
                style: TextStyle(
                    fontSize: 18, color: Colors.white.withOpacity(0.8)),
              ))
        ]),
      ),
      body: SingleChildScrollView(

        child: Column(
          children: Listdata.map((e) {
            return InkWell(
onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    e['routes']
                  }),
                );
              },
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 2),
                width: double.infinity,
                child: Row(

                  children: [
                    Image.asset(e["image"].toString(),height: 30,width: 30,fit: BoxFit.cover),
                 SizedBox(width: 30,),
                    Text(e["name"].toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Spacer(flex: 5,),
                    Icon(Icons.chevron_right,size: 30,),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
