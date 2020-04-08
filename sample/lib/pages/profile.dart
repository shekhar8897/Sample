import 'package:flutter/material.dart';
import 'package:sample/HomePage.dart';

class ProfilePage extends StatelessWidget {
  final Function onMenuTap;

  const ProfilePage({Key key,this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomePage(),
    );
  }
}