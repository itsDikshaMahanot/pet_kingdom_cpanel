import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

List<Map> drawerItems = [
  {'icon': Icons.ad_units, 'title': 'Profile'},
  {'icon': Icons.mail, 'title': 'About Us'},
  {'icon': Icons.access_alarm_outlined, 'title': 'Add Pet'},
  {'icon': Icons.favorite, 'title': 'Favourite'},
  {'icon': Icons.dangerous, 'title': 'Messgaes'},
];

class _HomeScreenState extends State<HomeScreen> {
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
                    TextField(
                        style: TextStyle(color: Colors.black, fontSize: 22),
                        onChanged: (value) {
                          print(value);
                        },
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Search...",
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
            margin: EdgeInsets.only(bottom: 250, left: 12, right: 12),
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
        title: Text("PET KINGDOM ADMIN"),
      ),
      backgroundColor: Colors.grey[200],
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
  return Container(
    margin: EdgeInsets.all(15),
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Insert",
              style: TextStyle(fontSize: 26),
            ),
            SizedBox(
              width: 10,
            ),
            Container(width: size.width * 0.75, height: 2, color: Colors.blue),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: drawerItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                        color: Colors.yellow,
                        width: 150,
                        child: Icon(drawerItems[index]['icon'])),
                  ),
                );
              },
            )),
        SizedBox(
          height: 20,
        ),
        Text(
          "Update",
          style: TextStyle(fontSize: 26),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      color: Colors.red,
                      width: 150,
                    ),
                  ),
                );
              },
            )),
        SizedBox(
          height: 20,
        ),
        Text(
          "Delete",
          style: TextStyle(fontSize: 26),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      color: Colors.greenAccent,
                      width: 150,
                    ),
                  ),
                );
              },
            ))
      ],
    ),
  );
}
