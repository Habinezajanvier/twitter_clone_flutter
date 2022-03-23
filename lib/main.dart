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
      ),
      home: const HomePage(),
    );
  }
}
