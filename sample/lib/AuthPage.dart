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
       return Container(
         padding: EdgeInsets.all(10),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             Text('LogIn',style: TextStyle(fontSize: 40,color: Color(0xFF0057ff)),),
             Divider(),
             SizedBox(height: 50),
             Container(
               child: SingleChildScrollView(
                  child: Form(
                   
                   child: SingleChildScrollView(
                     child: Column(
                       children: <Widget>[
                         TextFormField(
                        decoration: InputDecoration(labelText: 'Username'),
                        textInputAction: TextInputAction.next,
                        
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 35),
                      new MaterialButton( 
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        height: 70.0, 
                        minWidth: 360.0, 
                        color: Color(0xFF0057ff), 
                        textColor: Colors.white, 
                        child: new Text("LogIn",style: TextStyle(fontSize: 20),), 
                        onPressed:(){ _showModalSheet(AuthMode.Signup);}, 
                        splashColor: Colors.lightBlue,
                        elevation: 0,
                      ),
                     ],),
                 )),
               ),
             ),
           ],
         ),
       );
  }


  Widget mySignup(){
    return Container();
  }
// /isScrollControlled: true,
  void _showModalSheet(AuthMode data) {
    showModalBottomSheet(context: context, 
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),), builder: (builder) {
      return Container(
       height: MediaQuery.of(context).size.height*.6,
        child: data==AuthMode.Login?myLogin():mySignup(),
        padding: EdgeInsets.all(20.0),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
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