import 'package:flutter/material.dart';

class WhatsNew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _topContent(context),
            _centerContent(),
            _bottomContent(context),
          ],
        ),
      ),
    );
  }

  Widget _topContent(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/images/img1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("data"),
          Text("data"),
        ],
      ),
    );
  }

  Widget _centerContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 16),
          child: Text("top Stories"),
        ),
        _rowData(),
        Divider(),
        Divider(),
        _rowData(),
        Divider(),
        _rowData(),
      ],
    );
  }

  Widget _rowData() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage("assets/images/img1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              width: 125,
              height: 125,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 8, left: 8),
                    child: Text("data"),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 48.0, bottom: 8, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("data"),
                        Row(
                          children: <Widget>[
                            Icon(Icons.alarm),
                            Text("15Min"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomContent(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Recent Updates",style:TextStyle(
              fontSize: 20,
            )),
          ),
          _columnData(context, Colors.deepOrange),
          Divider(),
          _columnData(context, Colors.greenAccent),
        ],
      ),
    );
  }

  Widget _columnData(BuildContext context, Color _color) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/images/img1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Text("dasdad"),
              padding: EdgeInsets.all(4),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("data"),
                ),
                Row(
                  children: <Widget>[
                    Icon(Icons.alarm),
                    Text("15Min"),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
