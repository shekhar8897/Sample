import 'package:flutter/material.dart';
import 'package:sample/AuthPage.dart';




class HomePage extends StatelessWidget {
 // const HomePage({Key key}) : super(key: key);
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  bool enabled = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey, 
      drawer: Drawer(child: Text("hello"),),
     body:new Stack(
       children: <Widget>[
        //  Drawer(
        //    child:Text("hello")
        //  ),
          new Container(
            
            margin:EdgeInsets.only(top:25,left:30),
            height:100,
            //width:MediaQuery.of(context).size.width,
            child:IconButton(
              //icon: Icon(Icons.menu),
               icon: Image.asset('assets/icons/menu.png',height: 50,width: 25,),
               onPressed: (){
                 if (enabled) {
            // open drawer if this value is true
            _drawerKey.currentState.openDrawer();
          }
               },
             ),
          ),
          new Container(
            // decoration: BoxDecoration(border: Border.all(width:1)),
             margin:EdgeInsets.only(top:125,left:30,right:30),
             width:MediaQuery.of(context).size.width,
             padding: EdgeInsets.only(top:30,left:10),
             height:MediaQuery.of(context).size.height*0.6,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom:20),
                  decoration: BoxDecoration(
                    color: Color(0xFF0057ff),   // set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(10.0)), // set rounded corner radius
                    boxShadow: [BoxShadow(blurRadius: 10,color: Color(0xFF90CAF9),offset: Offset(1,10))]// make rounded corner of border
                  ),
                  child: Text("F.",style: TextStyle(fontSize: 30,color: Colors.white),),
                ),
                Container(
                  //decoration: BoxDecoration(border: Border.all(width:1)),
                    margin:EdgeInsets.only(top:60,right:30),
                    width:MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(top:30),
                  child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                     Text(
                  "Let's start\nmanaging your\nfinances",

                  style: new TextStyle
                  (
                    //height: 20,
                    fontSize: 35,
                    fontWeight: FontWeight.w100,
                    color: Color(0xFF707A8A),
                  ),    
                ),
                SizedBox(height: 20,),
                Text(
                  "YOUR PERSONAL FINANCE MANAGER",

                  style: new TextStyle
                  (
                    fontSize: 15,
                   color: Color(0xFF707A8A),
                  ), 
                ),
                  ],
                ),
                ),
              ],
            ),
          ),
          AuthPage(),
       ],
     ),
    );
  }
}
