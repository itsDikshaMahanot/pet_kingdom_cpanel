import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Row(children: [
                Card(
                  margin: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Insert",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
