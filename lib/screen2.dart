import 'package:flutter/material.dart';
import 'package:pet_kingdom_cpanel/screenlist.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.amberAccent,
        child: ListView(          
            children:<Widget>[
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Text(
                  "Insert",
                  style: TextStyle(
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MyList(),
            ]
            ),
      ),
    );
  }
}
