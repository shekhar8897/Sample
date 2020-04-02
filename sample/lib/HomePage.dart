import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
 // const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:new Stack(
       children: <Widget>[
          new Container(
            
            margin:EdgeInsets.only(top:25,left:30),
            height:100,
            //width:MediaQuery.of(context).size.width,
            child:IconButton(
              //icon: Icon(Icons.menu),
               icon: Image.asset('assets/icons/menu.png',height: 50,width: 25,),
               onPressed: (){},
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
          new Container(
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
                      onPressed: () => {}, 
                      splashColor: Colors.grey,
                      elevation: 0,
                    ),

                    new SizedBox(
                      width:30,
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
                    
                //     Text(
                //   "Let's start",

                //   style: new TextStyle
                //   (
                //     //height: 20,
                //     fontSize: 38,
                //     fontWeight: FontWeight.w400,
                //     color: Colors.grey
                //   ),    
                // ),
                // Text(
                //   "YOUR PERSONAL ",

                //   style: new TextStyle
                //   (
                //     fontSize: 10,
                //     color: Colors.blueGrey
                //   ), 
                // ),
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
       ],
     ),
    );
  }
}