import 'package:flutter/material.dart';

class MySignup extends StatefulWidget {
  @override
  _MySignupState createState() => _MySignupState();
}

class _MySignupState extends State<MySignup> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final FocusNode _usernameFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();

  final _formKey = GlobalKey<FormState>();

  void _submit() {
    if (_formKey.currentState.validate()) {
      // DO YOUR STUFF
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            Text('LogIn',style: TextStyle(fontSize: 40,color: Color(0xFF0057ff),),),
           Divider(),
           SizedBox(height: 50),
              TextFormField(
                controller: _usernameController,
                focusNode: _usernameFocus,
                onFieldSubmitted: (_) {
                  _usernameFocus.unfocus();
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                autofocus: false,
                decoration: InputDecoration(
                  // icon: Icon(Icons.person),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  labelText: "Username",
                  
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocus,
                onFieldSubmitted: (_) => _submit(),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  // icon: Icon(Icons.vpn_key),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                ),
                validator: (input) {
                  if (input.length < 8)
                    return "Please provide a longer password";
                  return null;
                },
              ),
              SizedBox(
                height: 25,
              ),
              
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child:  MaterialButton( 
                   shape: RoundedRectangleBorder(
                     borderRadius: new BorderRadius.circular(15.0),
                   ),
                   height: 70.0, 
                   minWidth: 360.0, 
                   color: Color(0xFF0057ff), 
                   textColor: Colors.white, 
                   child: new Text("LogIn",style: TextStyle(fontSize: 20),), 
                   onPressed:() => _formKey.currentState.validate(), 
                   splashColor: Colors.lightBlue,
                   elevation: 0,
                 ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
