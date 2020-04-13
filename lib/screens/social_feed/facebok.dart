import 'package:flutter/material.dart';
import 'package:newssapp/models/navigation_drawer.dart';

class FaceBook extends StatefulWidget {
  @override
  _FaceBookState createState() => _FaceBookState();
}

class _FaceBookState extends State<FaceBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FaceBook Feeds"),
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
                _bodyContent2(),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
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
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "sun,10 Apr 2020 - 1:46am ",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Icon(Icons.favorite),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text("25"),
            ),
          ],
        ),
      ],
    );
  }

  Widget _bodyContent() {
    return Container(
      padding: EdgeInsets.only(left: 24, bottom: 16, right: 8),
      child: Text(
        "A big somthing happned in the world takecare A big ",
        style: TextStyle(fontSize: 18),
      ),
    );
  }

  Widget _bodyContent2() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/img2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.25,
      margin: EdgeInsets.only(bottom: 8),
    );
  }

  Widget _footerContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "10 Commments",
                style: TextStyle(color: Colors.orange, fontSize: 16),
              ),
            ),
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
