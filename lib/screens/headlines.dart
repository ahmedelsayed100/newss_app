import 'package:flutter/material.dart';
import 'package:newssapp/models/navigation_drawer.dart';

import 'tab_screens/favoirt.dart';
import 'tab_screens/popular.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  // Widget _widget;
  @override
  void initState() {
    super.initState();
    // this is for detect the number of tabs
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" HeadLines"),
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
              child: Text("Favourite"),
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
          Favourite(),
          Popular(),
          Favourite(),
        ],
        controller: _tabController,
      ),
      drawer: NavigationDrawer(),
    );
  }
}
