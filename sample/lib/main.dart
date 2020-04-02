import 'package:flutter/material.dart';
import 'package:sample/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        accentColor: Colors.white,
        buttonColor: Colors.black,
        fontFamily: 'Bitter'
      ),
      home: MyHomePage(title: 'Sample'),
    );
  }
}
class MyHomePage extends StatelessWidget {

  final String title;
  const MyHomePage({this.title,Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}