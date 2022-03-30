import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  bool showList = true;

  void togleOverLay() {
    setState(() {
      showList = !showList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        SizedBox(
          height: 200,
          child: DrawerHeader(
            margin: const EdgeInsets.only(bottom: 0),
            decoration: const BoxDecoration(
              color: Palette.twitterBlue,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 90,
                  child: IconButton(
                    icon: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                      size: 78,
                    ),
                    onPressed: () {
                      // Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Habineza janvier",
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          Text(
                            "@janvier_hab",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        "45",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Text(
                                      "Followers",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.blueGrey),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: const <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text(
                                        "26",
                                        style: TextStyle(fontSize: 16.0),
                                      ),
                                    ),
                                    Text(
                                      "Following",
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.blueGrey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    if (showList == true)
                      IconButton(
                          onPressed: togleOverLay,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ))
                    else
                      IconButton(
                          onPressed: togleOverLay,
                          icon: const Icon(
                            Icons.keyboard_arrow_up,
                            color: Colors.white,
                          ))
                  ],
                ),
              ],
            ),
          ),
        ),
        if (showList == true)
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.blueGrey),
              ),
              color: Palette.twitterBlue,
            ),
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              ListTile(
                title: const Text(
                  'Profile',
                ),
                leading: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 32.0,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Lists',
                ),
                leading: const Icon(
                  Icons.subject,
                  color: Colors.white,
                  size: 32.0,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Topics',
                ),
                leading: const Icon(
                  Icons.comment_outlined,
                  color: Colors.white,
                  size: 32.0,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Bookmarks',
                ),
                leading: const Icon(
                  Icons.turned_in_not_outlined,
                  color: Colors.white,
                  size: 32.0,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Moments',
                ),
                leading: const Icon(
                  Icons.flash_on,
                  color: Colors.white,
                  size: 32.0,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Monetization',
                ),
                leading: const Icon(
                  Icons.local_atm_outlined,
                  color: Colors.white,
                  size: 32.0,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.blueGrey, width: 1.0),
                      top: BorderSide(color: Colors.blueGrey, width: 1.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: ListTile(
                    title: const Text(
                      'Twitter for professionals',
                    ),
                    leading: const Icon(
                      Icons.rocket_launch,
                      color: Colors.white,
                      size: 32.0,
                    ),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Settings and privacy',
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text(
                  'Help Center',
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ]),
          )
        else
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.blueGrey),
              ),
              color: Palette.twitterBlue,
            ),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: const <Widget>[
                ListTile(
                  title: Text("Create a new Account"),
                ),
                ListTile(
                  title: Text("Create a new Account"),
                ),
              ],
            ),
          )
      ],
    );
  }
}
