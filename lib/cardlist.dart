import 'package:flutter/material.dart';
import 'package:pet_kingdom_cpanel/insert_screen.dart';
import 'package:pet_kingdom_cpanel/home_screen.dart';

class Cardlist extends StatelessWidget {
  const Cardlist({Key key}) : super(key: key);

  get margin => null;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
              height: size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.topCenter,
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)))),
          SafeArea(
              child: Column(children: <Widget>[
            Container(
              height: 65,
              margin: EdgeInsets.only(
                bottom: 100,
                left: 12,
              ),
              child: Row(children: <Widget>[
                CircleAvatar(),
              ]),
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                primary: false,
                crossAxisCount: 2,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn.iconscout.com/icon/premium/png-256-thumb/insert-39-291884.png',
                            height: 120,
                          ),
                          Text(
                            "Insert",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn.iconscout.com/icon/premium/png-256-thumb/insert-39-291884.png',
                            height: 120,
                          ),
                          Text(
                            "Update",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                    },
                    child: Card(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            'https://cdn.iconscout.com/icon/premium/png-256-thumb/insert-39-291884.png',
                            height: 120,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
