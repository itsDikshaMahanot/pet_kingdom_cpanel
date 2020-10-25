import 'package:flutter/material.dart';

class InsertScreen extends StatelessWidget {
  const InsertScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: <Widget>[
          Expanded(
            child: SafeArea(
              child: Container(
                margin: EdgeInsets.only(top: 150),
                child: GridView.count(
                  crossAxisCount: 4,
                  primary: false,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 10,
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                            "https://cdn.onlinewebfonts.com/svg/img_498109.png",
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Fish",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                     ),
                     elevation: 5,
                    ),
                    Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                            "https://cdn.onlinewebfonts.com/svg/img_498109.png",
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Dog",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                       elevation: 5,
                    ),
                    Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                            "https://cdn.onlinewebfonts.com/svg/img_498109.png",
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Bird",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                       elevation: 5,
                    ),
                    Card(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.network(
                            "https://cdn.onlinewebfonts.com/svg/img_498109.png",
                            height: 50,
                            width: 50,
                          ),
                          Text(
                            "Plants",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                       elevation: 5,
                    ),



                    
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
