import 'package:flutter/material.dart';
import 'config/palette.dart';
import 'navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter clone',
      theme: ThemeData(
          primarySwatch: Palette.twitterBlue,
          fontFamily: "Helvetica",
          primaryColor: const Color.fromARGB(255, 255, 255, 255),
          textTheme: const TextTheme(
              bodyText1: TextStyle(color: Colors.white, fontSize: 20.0),
              bodyText2: TextStyle(color: Colors.blueGrey, fontSize: 16.0))),
      home: const HomePage(),
    );
  }
}
