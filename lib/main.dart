import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pet_kingdom_cpanel/homescreen1.dart';
import 'package:pet_kingdom_cpanel/insert_screen.dart';
import 'package:pet_kingdom_cpanel/uploadImage.dart';

// import 'package:pet_kingdom_cpanel/fish_species.dart';
// import 'package:pet_kingdom_cpanel/home_screen.dart';
// import 'package:pet_kingdom_cpanel/homescreen1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
