import 'package:flutter/material.dart';

// THIS IS THE CALL FUNCTION IN ANOTHER CLASS
void _openNewItemBottomSheet(BuildContext context) => showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
    builder: (ctx) => NewItemSheet(),
    isScrollControlled: true);

class NewItemSheet extends StatefulWidget {
  @override
  _NewItemSheetState createState() => _NewItemSheetState();
}

class _NewItemSheetState extends State<NewItemSheet> {
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
              Text(
                'LOGIN',
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                controller: _usernameController,
                focusNode: _usernameFocus,
                onFieldSubmitted: (_) {
                  _usernameFocus.unfocus();
                  FocusScope.of(context).requestFocus(_passwordFocus);
                },
                autofocus: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocus,
                onFieldSubmitted: (_) => _submit(),
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.vpn_key),
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
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: RaisedButton(
                    onPressed: () => _formKey.currentState.validate(),
                    child: Text("Login"),
                    color: Theme.of(context).primaryColor,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
