import 'package:flutter/material.dart';


class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context , i){
          return Container(
            padding:EdgeInsets.all(8.0),
            child: Text("Category 1"),
          );
        }
      ),
      
    );
  }
}