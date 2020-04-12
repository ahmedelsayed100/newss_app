import 'package:flutter/material.dart';
import 'package:newssapp/utilitize/them.dart';
// import './screens/home.dart';
import './screens/welcome_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // bool seen = prefs.getBool('seen');

  // Widget _screen;

  // if (seen != null || seen == false) {
  //   _screen = WelcomeScreen();
  // } else {
  //   _screen = Home();
  // }
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // final Widget _screen;
  // MyApp(this._screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theming.appBarThem,
      title: "Egy News",
      home: WelcomeScreen(),
    );
  }
}
