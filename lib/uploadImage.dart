import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

class uploadImage extends StatefulWidget {
  uploadImage({Key key}) : super(key: key);

  @override
  _uploadImageState createState() => _uploadImageState();
}

class _uploadImageState extends State<uploadImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Upload Image")),
      body: Builder(
        builder: (context) => Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.greenAccent,
                        child: ClipOval(
                          child: SizedBox(
                            width: 180.0,
                            height: 180.0,
                            child: Image.network(
                                "https://www.trendingus.com/wp-content/uploads/2020/01/a04e4e5ebee1b7d1d4bf8db62107c38b.jpg",
                                fit: BoxFit.fill),
                          ),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 60.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.add_a_photo_rounded,
                        size: 40.0,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      decoration:
                          InputDecoration(hintText: "enter the category Name"),
                    ),
                    TextField(
                      decoration:
                          InputDecoration(hintText: "enter the Species Name"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Column(
                        children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Image Name",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 30.0,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                textColor: Colors.blueAccent,
                                onPressed: () {},
                                child: Text(
                                  "Add New Category",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
