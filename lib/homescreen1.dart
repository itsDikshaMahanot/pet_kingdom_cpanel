import 'package:flutter/material.dart';

class HomeScreen_One extends StatefulWidget {
  @override
  _HomeScreen_OneState createState() => _HomeScreen_OneState();
}

List<Map> icons = [
  {'assets': ('assets/images/bg.jpg')},
  {'assets': ('assets/images/ranchu.jpg')}
];

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
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)))),
              Container(
                  margin: EdgeInsets.only(
                    top: 210,
                    left: 10,
                    right: 10,
                  ),
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(1),
                        // child: InkWell(
                        //   onTap: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (context) => FishSpecies(),
                        //     ));
                        //   },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            color: Colors.grey[400],
                            width: 100,
                          ),
                        ),
                      );
                    },
                  )),
            ],
          ),
        ],
      ),
    ),
  );
}
