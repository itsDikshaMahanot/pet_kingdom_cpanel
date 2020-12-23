import 'dart:ui';
import 'package:flutter/material.dart';

class HomeScreen_One extends StatefulWidget {
  @override
  _HomeScreen_OneState createState() => _HomeScreen_OneState();
}

List<Map> imageIcons = [
  {'assets': 'assets/images/bg.jpg'},
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
  void showDialog() {
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 300),
      context: context,
      pageBuilder: (_, __, ___) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 300,
            child: SizedBox.expand(
                child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Material(
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Colors.black, fontSize: 22),
                      onChanged: (value) {
                        print(value);
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Reference...",
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
                          hintText: "Species_Name...",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ),
                          enabledBorder: InputBorder.none,
                        )),
                  ],
                ),
              ),
            )),
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
