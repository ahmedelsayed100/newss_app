import 'package:flutter/material.dart';
import 'package:newssapp/models/navigation_drawer.dart';

import 'package:newssapp/screens/tab_screens/favoirt.dart';

import 'tab_screens/popular.dart';
import 'tab_screens/whats_new.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _tabController;
  // Widget _widget;
  @override
  void initState() {
    super.initState();
    // this is for detect the number of tabs
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
@override
  void dispose() {
        _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              child: Text("Whats's New"),
            ),
            Tab(
              child: Text("Popular"),
            ),
            Tab(
              child: Text("Favourite"),
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          WhatsNew(),
          Popular(),
          Favourite(),
        ],
        controller: _tabController,
      ),
      drawer: NavigationDrawer(),
    );
  }
}
