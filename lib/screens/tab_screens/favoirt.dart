

import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  final List<String> _category = ["Sports", "Art", "LifeStyle", "Fashion"];
  final List<Color> _colors = [
    Colors.red,
    Colors.yellow,
    Colors.blue,
    Colors.indigo,
    Colors.teal,
    Colors.green,
    Colors.pink,
  ];
  // Random random;
  // void _genrateRandomNumber(int index) {
  //   index = random.nextInt(_category.length);
  // }

  // int _genrateRandomNumber2() {
  //   Random random;
  //   return random.nextInt(_colors.length);
  // }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 24, top: 8, bottom: 8),
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _topContent(),
              _bottomContent(),
            ],
          ),
        );
      },
      itemCount: 15,
    );
  }

  Widget _topContent() {
    // Random random;
    // int temp1 = random.nextInt(4);
    // int temp2 = random.nextInt(7);
    // int temp2 = _genrateRandomNumber2();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage("assets/images/img1.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(right: 16),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Ahmed ELsayed"),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("15Min   "),
                    Text(
                      // _category[index],
                      _category[2].toString(),
                      style: TextStyle(
                        color: _colors[6],
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
        IconButton(
          icon: Icon(
            Icons.bookmark_border,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _bottomContent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: ExactAssetImage("assets/images/img1.jpg"),
              fit: BoxFit.cover,
            ),
            // shape: BoxShape.circle,
          ),
          width: 200,
          height: 150,
          margin: const EdgeInsets.only(top: 16, bottom: 16),
        ),
        Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "A big accident happend lastnight in Egypt",
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: .9,
                    height: 1.3,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0, 16, 8),
                child: Text(
                  "A big accident happend lastnight in Egypt A big accident happend lastnight in Egypt A big accident happend lastnight in Egypt",
                  style: TextStyle(
                    fontSize: 17,
                    letterSpacing: .9,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
