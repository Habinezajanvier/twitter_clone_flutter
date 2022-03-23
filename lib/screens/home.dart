import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.twitterBlue[100],
      child: const Center(
        child: Text(
          "This is the Home Screen",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
