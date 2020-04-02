import 'dart:math';
import 'package:flutter/material.dart';


class AuthPage extends StatefulWidget {
  AuthPage({Key key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {


  void _showModalSheet() {
    showModalBottomSheet(context: context, builder: (builder) {
      return Container(
        child: Text('Welcome to Login Page'),
        padding: EdgeInsets.all(40.0),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new Container(
            //decoration: BoxDecoration(border: Border.all(width:1)),
             margin:EdgeInsets.only(top:450,left:38,right:30),
             width:MediaQuery.of(context).size.width,
             padding: EdgeInsets.only(top:130),
             height:MediaQuery.of(context).size.height*0.4,
             
             child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Row(
                  children: <Widget>[
                    new MaterialButton( 
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      height: 70.0, 
                      minWidth: 250.0, 
                      color: Theme.of(context).buttonColor, 
                      textColor: Colors.white, 
                      child: new Text("Log In",style: TextStyle(fontSize: 20),), 
                      onPressed: _showModalSheet, 
                      splashColor: Colors.grey,
                      elevation: 0,
                    ),

                    new SizedBox(
                      width:25,
                    ),

                    new MaterialButton(

                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(13.0),
                      ),
                      
                      height: 70.0, 
                      minWidth: 80.0, 
                      color: Theme.of(context).buttonColor, 
                      textColor: Colors.white, 
                      child: new Icon(Icons.fingerprint),
                      onPressed: () => {}, 
                      splashColor: Colors.grey,
                      elevation: 0,

                    ),
                  ],
                ),
                new SizedBox(
                  height:15
                ),
                 new MaterialButton( 
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(15.0),
                      ),
                      height: 70.0, 
                      minWidth: 360.0, 
                      color: Color(0xFF0057ff), 
                      textColor: Colors.white, 
                      child: new Text("Register",style: TextStyle(fontSize: 20),), 
                      onPressed: () => {}, 
                      splashColor: Colors.lightBlue,
                      elevation: 0,
                    ),

                
              ],
            ),
          ),
  }
}