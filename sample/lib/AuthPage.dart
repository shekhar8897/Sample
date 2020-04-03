// import 'dart:math';
import 'package:flutter/material.dart';

enum AuthMode { Signup, Login }

class AuthPage extends StatefulWidget {
  AuthPage({Key key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  
  Widget myLogin(){
    return Padding(
  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
  child: TextField()
);
  }
  // Widget mySignup(){

  // }
  Widget myForm(AuthMode data)
  {
    return Container(
      //child:Text(data == AuthMode.Login ? 'LOGIN' : 'SIGN UP',style: TextStyle(fontSize: 150),)
      child:Container(child:data==AuthMode.Login?myLogin():Text('SIGNUP',style:TextStyle(fontSize:150)),)
    );
  }

  void _showModalSheet(AuthMode data) {
    showModalBottomSheet(context: context, shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ), builder: (builder) {
     
      return Container(
        
        child: myForm(data),
        padding: EdgeInsets.all(40.0),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
            physics: ClampingScrollPhysics(),
          child: new Container(
              //decoration: BoxDecoration(border: Border.all(width:1)),
               margin:EdgeInsets.only(top:0,left:38,right:30),
               width:MediaQuery.of(context).size.width*0.84,
               padding: EdgeInsets.only(top:30),
               height:MediaQuery.of(context).size.height*0.3,
               
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
                        onPressed: (){ _showModalSheet(AuthMode.Login);}, 
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
                        onPressed:(){ _showModalSheet(AuthMode.Signup);}, 
                        splashColor: Colors.lightBlue,
                        elevation: 0,
                      ),

                  
                ],
              ),
            ),
    );
  }
}