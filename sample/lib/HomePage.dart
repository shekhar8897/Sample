import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sample/dashboard.dart';
import 'package:sample/menu.dart';

class HomePage extends StatefulWidget {
 // const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void onMenuTap(){
     setState(() 
     {
        if (isCollapsed)
          _controller.forward();
        else
          _controller.reverse();

       isCollapsed = !isCollapsed;
      });
  }
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
     body:new Stack(
       children: <Widget>[
          Menu(slideAnimation:_slideAnimation,menuScaleAnimation:_menuScaleAnimation),
          Dashboard(
            duration: duration,
            onMenuTap: onMenuTap,
            scaleAnimation: _scaleAnimation,
            isCollapsed: isCollapsed,
            screenWidth: screenWidth,
          ), 
       ],
     ),
    );
  }
}
