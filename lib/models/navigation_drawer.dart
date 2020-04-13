import 'package:flutter/material.dart';
import 'package:newssapp/models/navigator_items.dart';
import 'package:newssapp/screens/headlines.dart';
import 'package:newssapp/screens/home.dart';
import 'package:newssapp/screens/social_feed/twitter_feed.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

List<NavigatorItems> _items = [
  NavigatorItems("Explore", Home()),
  NavigatorItems("HeadLines News", HeadLineNews()),
  NavigatorItems("Twitter Feed", TwitterFeed()),
];

// List<String> _titles = [
//   "Explore",
//   "HeadLine News",
//   "Setting",
//   "About",
//   "About",
//   "About",
//   "About",
//   "About",
// ];

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 24),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => _items[index].destination,
                    ),
                  );
                },
                trailing: Icon(Icons.arrow_right),
                title: Text(
                  _items[index].title,
                  textAlign: TextAlign.left,
                ),
              ),
            );
          },
          itemCount: _items.length,
        ),
      ),
    );
  }
}
