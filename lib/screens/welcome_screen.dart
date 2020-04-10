import 'package:flutter/material.dart';
import 'package:newssapp/models/page_view_model.dart';

class WelcomeScreen extends StatelessWidget {
  // final List<String> images = [
  //   "assets/images/img1.jpg",
  //   "assets/images/img2.jpg",
  //   "assets/images/img3.jpg",
  //   "assets/images/img4.jpg"
  // ];
  final List<PageViewModel> pages = List<PageViewModel>();
  void pageChanging() {
    pages.add(PageViewModel(
        "Welcome 1",
        "1- he i'm ahmed elsayed i'm graduated from faculty of computers andi nformation",
        "assets/images/img1.jpg",
        Icons.notifications));
    pages.add(PageViewModel(
        "Welcome 2",
        "2- he i'm ahmed elsayed i'm graduated from faculty of computers andi nformation",
        "assets/images/img2.jpg",
        Icons.tab));
    pages.add(PageViewModel(
        "Welcome 3",
        "3- he i'm ahmed elsayed i'm graduated from faculty of computers andi nformation",
        "assets/images/img3.jpg",
        Icons.dashboard));
    pages.add(PageViewModel(
        "Welcome 4",
        "4- he i'm ahmed elsayed i'm graduated from faculty of computers andi nformation",
        "assets/images/img4.jpg",
        Icons.ac_unit));
  }

  @override
  Widget build(BuildContext context) {
    pageChanging();
    return Scaffold(
      body: Container(
          child: Stack(
        children: <Widget>[
          PageView.builder(
            // reverse: true,
            //72412008
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pages[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(
                          pages[index].icon,
                          size: 88,
                          color: Colors.white,
                        ),
                        offset: Offset(0, -110),
                      ),
                      Text(
                        pages[index].title,
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          pages[index].description,
                          style: TextStyle(
                            fontSize: 23,
                            color: Colors.grey.shade700,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  Transform.translate(
                    offset: Offset(0, 110),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: pageIndactor(),
                    ),
                  ),
                ],
              );
            },
            itemCount: pages.length,
          ),
          //*******this code for make the buuton ********* */
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
                left: 16,
                right: 16,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  textColor: Colors.white,
                  onPressed: () {},
                  color: Colors.red.shade900,
                  elevation: 3,
                  child: Text(
                    "Get Started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  List<Widget> pageIndactor() {
    List<Widget> _widgets = List<Widget>();
    for (var x in pages) {
      _widgets.add(_contianer());
    }
    return _widgets;
  }

  Widget _contianer() {
    return Container(
      width: 15,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}
