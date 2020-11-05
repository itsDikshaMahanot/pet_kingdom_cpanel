import 'package:flutter/material.dart';
import 'package:pet_kingdom_cpanel/cardlist.dart';
import 'package:pet_kingdom_cpanel/homescreen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen_One());
  }
}
