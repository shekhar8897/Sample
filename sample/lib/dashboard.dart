import 'package:flutter/material.dart';
import 'package:sample/head.dart';


class Dashboard extends StatelessWidget {
   final bool isCollapsed;
   final Duration duration ;
   final double screenWidth;
   final Animation<double> scaleAnimation;
   final Function onMenuTap;
  final Widget child;

  Dashboard({this.isCollapsed,this.duration,this.screenWidth,this.scaleAnimation,this.onMenuTap,this.child});

  @override
  Widget build(BuildContext context) {
     return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      right: isCollapsed ? 0 : -0.3 * screenWidth,
      
      child: ScaleTransition(
        scale: scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 8,
          color: Colors.white,
          child: HeaderPage(onMenuTap: onMenuTap,),
        ),
      ),
    );
  }
}