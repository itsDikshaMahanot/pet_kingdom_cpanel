import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class InsertValue extends StatefulWidget {
  InsertValue({Key key}) : super(key: key);

  @override
  _InsertValueState createState() => _InsertValueState();
}

class _InsertValueState extends State<InsertValue> {
  @override
  initState() {
    super.initState();

    readData();
  }

  DatabaseReference databaseReference;

  Future<void> readData() async {
    databaseReference = FirebaseDatabase.instance.reference();

    await databaseReference.once().then((DataSnapshot snapshot) {
      print(snapshot.value);
    });
  }

  final text1controller = TextEditingController();
  final text2controller = TextEditingController();
  final text3controller = TextEditingController();
  final text4controller = TextEditingController();
  final text5controller = TextEditingController();
  final text6controller = TextEditingController();
  final text7controller = TextEditingController();
  final text8controller = TextEditingController();
  final text9controller = TextEditingController();
  final text10controller = TextEditingController();
  final text11controller = TextEditingController();
  final text12controller = TextEditingController();
  final text13controller = TextEditingController();

  String first;
  String second;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.grey[300],
          width: MediaQuery.of(context).size.width - 0,
          height: MediaQuery.of(context).size.height - 0,
          padding: EdgeInsets.only(top: 50.0, right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/ranchu.jpg'),
                      backgroundColor: Colors.blueAccent,
                      radius: 50,
                    ),
                    RaisedButton(
                      color: Colors.amberAccent,
                      textColor: Colors.black,
                      onPressed: () {},
                      child: Text("Upload Image"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Card(
                  child: TextField(
                      controller: text1controller,
                      decoration: InputDecoration(
                          hintText: "Breed",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text2controller,
                      decoration: InputDecoration(
                          hintText: "BreedAge",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text3controller,
                      decoration: InputDecoration(
                          hintText: "BreedSize",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text4controller,
                      decoration: InputDecoration(
                          hintText: "Compatible",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text5controller,
                      decoration: InputDecoration(
                          hintText: "Native",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text6controller,
                      decoration: InputDecoration(
                          hintText: "Planted",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text7controller,
                      decoration: InputDecoration(
                          hintText: "Schooling",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text8controller,
                      decoration: InputDecoration(
                          hintText: "Temprament",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text9controller,
                      decoration: InputDecoration(
                          hintText: "WaterMaxTemp",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text10controller,
                      decoration: InputDecoration(
                          hintText: "WaterMinTemp",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text11controller,
                      decoration: InputDecoration(
                          hintText: "WaterPh",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text12controller,
                      decoration: InputDecoration(
                          hintText: "WaterTankSize",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Card(
                  child: TextField(
                      controller: text13controller,
                      decoration: InputDecoration(
                          hintText: "WaterType",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                            fontSize: 22,
                          ))),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: RaisedButton(
                    onPressed: () {
                      databaseReference.child("fish").push().set({
                        "breed": text1controller.text,
                        "breedage": text2controller.text,
                        "breedSize": text3controller.text,
                        "compatible": text4controller.text,
                        "native": text5controller.text,
                        "planted": text6controller.text,
                        "schooling": text7controller.text,
                        "temprament": text8controller.text,
                        "waterMaxTemp": text9controller.text,
                        "waterMinTemp": text10controller.text,
                        "waterPh": text11controller.text,
                        "waterTankSize": text12controller.text,
                        "waterType": text13controller.text
                      });
                      setState(() {
                        first = text1controller.text;
                        second = text2controller.text;
                      });
                    },
                    color: Colors.amberAccent,
                    textColor: Colors.black,
                    child: Text("Add New"),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
