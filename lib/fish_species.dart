import 'package:flutter/material.dart';

class Fishspecies extends StatefulWidget {
  @override
  _FishspeciesState createState() => _FishspeciesState();
}

class _FishspeciesState extends State<Fishspecies> {
  var breedName;
  var fishName;

  final breedController = new TextEditingController();
  final fishcontroller = new TextEditingController();
  var x;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fish Breed", style: TextStyle(letterSpacing: 1)),
          backgroundColor: Colors.cyanAccent[400],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: x == 0
                  ? Hero(
                      tag: "1",
                      child: Icon(
                        Icons.face,
                        size: 100,
                      ),
                    )
                  : Hero(
                      tag: "1",
                      child: Icon(
                        Icons.face,
                        size: 300,
                      ),
                    ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              print(x);
              x == 0 ? x = 1 : x = 0;
            });
          },
        ));
  }
}
