import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_database/firebase_database.dart';

class HomeScreen_One extends StatefulWidget {
  @override
  _HomeScreen_OneState createState() => _HomeScreen_OneState();
}

List<Map> imageIcons = [
  {'assets': 'assets/images/Oscar-Fish.jpg'},
  {'assets': 'assets/images/ranchu.jpg'},
  {'assets': 'assets/images/figther.jpg'},
  {'assets': 'assets/images/figther.jpg'},
];
List<Map> drawerItems = [
  {'icon': Icons.ad_units, 'title': 'Profile'},
  {'icon': Icons.mail, 'title': 'About Us'},
  {'icon': Icons.favorite, 'title': 'Favourite'},
  {'icon': Icons.dangerous, 'title': 'Messgaes'},
];

/// making new dialog box from + button sign////
///
class _HomeScreen_OneState extends State<HomeScreen_One> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
      print(_image);
    });
  }

  Future uploadPic(BuildContext context) async {
    String filename = _image.path; //basename(_image.path)//
    DatabaseReference databaseReference =
        FirebaseDatabase.instance.reference().child(filename).push();
  }

  void showDialog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Material(
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
                                        child: (_image != null)
                                            ? Image.file(
                                                _image,
                                                fit: BoxFit.fill,
                                              )
                                            : Image.network(
                                                "https://www.trendingus.com/wp-content/uploads/2020/01/a04e4e5ebee1b7d1d4bf8db62107c38b.jpg",
                                                fit: BoxFit.fill),
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 60.0, left: 10.0),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add_a_photo_rounded,
                                    size: 40.0,
                                  ),
                                  onPressed: () {
                                    getImage();
                                  },
                                ),
                              )
                            ]),
                        SizedBox(
                          height: 30.0,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Image Name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        SizedBox(height: 20.0),
                        TextField(
                          style: TextStyle(color: Colors.black, fontSize: 22),
                          onChanged: (value) {
                            print(value);
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Category Name",
                            hintStyle: TextStyle(
                              color: Colors.black26,
                              fontSize: 22,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                        TextField(
                          style: TextStyle(color: Colors.black, fontSize: 22),
                          onChanged: (value) {
                            print(value);
                          },
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Species Name",
                            hintStyle: TextStyle(
                              color: Colors.black26,
                              fontSize: 22,
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                        SizedBox(height: 30.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RaisedButton(
                              textColor: Colors.blueAccent,
                              onPressed: () {
                                // uploadPic(context);
                              },
                              child: Text(
                                "Add New",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            RaisedButton(
                              textColor: Colors.blueAccent,
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            margin: EdgeInsets.only(bottom: 350, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, 3), end: Offset(0, 0)).animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("PET KINGDOM ADMIN"),
      ),
      backgroundColor: Colors.grey[300],
      body: Home(size),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

Widget Home(var size) {
  return Scaffold(
    body: Container(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)))),
              Container(
                  margin: EdgeInsets.only(
                    top: 160,
                    left: 5,
                    right: 5,
                  ),
                  height: 105,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: drawerItems.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                          padding: const EdgeInsets.all(1),
                          child: GestureDetector(
                              onTap: () {
                                showGeneralDialog(
                                    barrierDismissible: true,
                                    barrierLabel:
                                        MaterialLocalizations.of(context)
                                            .modalBarrierDismissLabel,
                                    barrierColor: Colors.lightBlue[50],
                                    transitionDuration:
                                        Duration(milliseconds: 700),
                                    context: context,
                                    pageBuilder: (BuildContext context,
                                        Animation first, Animation second) {
                                      return Center(
                                        child: Material(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.lightGreenAccent[100],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width -
                                                20,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height -
                                                60,
                                            padding: EdgeInsets.all(15.0),
                                            child: Column(
                                              children: [
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.text,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter the Category Name like goldfish,etc...",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.text,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter the Breed Name like tiger Oscar...",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter the BreedAge",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter the image for Breedimage..URL",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          "Enter the breedSize",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText: "Compatibility",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                TextField(
                                                    autofocus: false,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                      hintText: "Native place",
                                                      hintStyle: TextStyle(
                                                        color: Colors.black26,
                                                        fontSize: 22,
                                                      ),
                                                    )),
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: RaisedButton(
                                                    onPressed: () {
                                                      print("Button clicked");
                                                    },
                                                    child: Text("Add"),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    transitionBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return SlideTransition(
                                        position: Tween(
                                                begin: Offset(0, 3),
                                                end: Offset(0, 0))
                                            .animate(animation),
                                        child: child,
                                      );
                                    });
                              },
                              child: Card(
                                elevation: 5,
                                color: Colors.black,
                                child: Container(
                                  width: 110,
                                  child: Image(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          imageIcons[index]['assets'])),
                                ),
                              )));
                    },
                  )),
              Column(
                children: [
                  SizedBox(height: 320),
                  Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      height: 150,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          color: Colors.grey,
                        ),
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
