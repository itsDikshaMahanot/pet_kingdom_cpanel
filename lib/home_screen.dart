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
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                width: 20,
              ),
              Container(width: size.width * 0.7, height: 2, color: Colors.blue),
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
              ))
        ],
      ),
    );
  }
}
