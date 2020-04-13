import 'package:flutter/material.dart';
import 'package:newssapp/models/navigation_drawer.dart';

class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Twitter Feed"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),

        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.only(bottom: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _headerContent(),
                _bodyContent(),
                Divider(
                  height: 2,
                  color: Colors.yellow,
                ),
                _footerContent(),
              ],
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }

  Widget _headerContent() {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage("assets/images/img1.jpg"),
            radius: 30,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Ahmed Elsayed   "),
                Text(
                  "@A12Elsayed",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "sun,10 Apr 2020 - 1:46am ",
              style: TextStyle(color: Colors.grey.shade500),
            )
          ],
        )
      ],
    );
  }

  Widget _bodyContent() {
    return Container(
      padding: EdgeInsets.only(left: 24, bottom: 16, right: 8),
      child: Text(
        "A big somthing happned in the world takecare A big somthing happned in the world takecare  A big somthing happned in the world takecare  A big somthing happned in the world takecare",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _footerContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.repeat,
                color: Colors.orange,
                size: 30,
              ),
              onPressed: () {},
            ),
            Text("25"),
          ],
        ),
        Row(
          children: <Widget>[
            FlatButton(
              child: Text("Share"),
              textColor: Colors.orange,
              onPressed: () {},
            ),
            FlatButton(
              child: Text("Open"),
              textColor: Colors.orange,
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
