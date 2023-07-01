import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Contactscreen extends StatefulWidget {
  @override
  State<Contactscreen> createState() => _ContactscreenState();
}

int index = 0;

class _ContactscreenState extends State<Contactscreen> {
  File? imageFile;

  getFromGallery() async {
    var pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    var pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  bool border1 = true;
  bool border2 = false;
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white.withOpacity(0.95),
      appBar: AppBar(
        toolbarHeight: 110,
        title: Column(
          children: [
            Text("Resume Workspace"),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                          border1 = true;
                          border2 = false;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: border1
                                ? Border(
                                    bottom: BorderSide(
                                    width: 2,
                                  ))
                                : null,
                          ),
                          child: Center(child: Text("Contact")))),
                ),
                Expanded(
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                          border1 = false;
                          border2 = true;
                        });
                      },
                      child: Container(
                          padding: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            border: border2
                                ? Border(
                                    bottom: BorderSide(
                                    width: 2,
                                  ))
                                : null,
                          ),
                          child: Center(child: Text("Phone")))),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          IndexedStack(
            index: index,
            children: [
              Container(
                height: 500,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(
                            Icons.person,
                            size: 35,
                          ),
                          hintText: 'Name',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(
                            Icons.email,
                            size: 35,
                          ),
                          hintText: 'Email',
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          icon: const Icon(
                            Icons.phone_android,
                            size: 35,
                          ),
                          hintText: 'Phone',
                        ),
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: const InputDecoration(
                            icon: const Icon(
                              Icons.location_on_sharp,
                              size: 35,
                            ),
                            hintText: 'Address(Street,Building No)'),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: imageFile == null
                      ? Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            child: Container(
                              margin: EdgeInsets.all(30),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.7),
                                shape: BoxShape.circle,
                              ),
                              child: Stack(
                                children: [
                                  Center(
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (ctx) => AlertDialog(
                                            title: const Text("Select Image"),
                                            content: const Text(
                                                "Add Your Profile Image from Mention Below"),
                                            actions: <Widget>[
                                              ElevatedButton(
                                                onPressed: () async {
                                                  await getFromGallery();
                                                  Navigator.of(context).pop();
                                                },
                                                child:
                                                    Text("PICK FROM GALLERY"),
                                              ),
                                              Container(
                                                height: 20.0,
                                              ),
                                              ElevatedButton(
                                                onPressed: () async {
                                                  await _getFromCamera();
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text("PICK FROM CAMERA"),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.blue),
                                          height: 30,
                                          width: 30,
                                          child: Center(
                                              child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ))),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      // : Container(
                      //     child: Image.file(
                      //       imageFile!,
                      //       fit: BoxFit.cover,
                      //     ),
                      //   ))
                      : Container(
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Align(
                            child: Container(
                              margin: EdgeInsets.all(30),
                              child: CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 120,
                                child: CircleAvatar(
                                  radius: 120 - 5,
                                  backgroundImage: Image.file(
                                    imageFile!,
                                    fit: BoxFit.cover,
                                  ).image,
                                ),
                              ),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.7),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ))
            ],
          )
        ],
      ),
    );
  }
}
