import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';
import 'package:twitter_clone/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 44,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text("Twitter"),
      ),
      drawer: const Drawer(
        child: HomeDrawer(),
      ),
      body: Container(
        color: Palette.twitterBlue[100],
        child: const Center(
          child: Text(
            "This is the Home Screen",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
