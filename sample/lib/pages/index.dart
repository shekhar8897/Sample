import 'package:flutter/material.dart';
import 'package:sample/AuthPage.dart';

//import '../AuthPage.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
                       
                            scrollDirection: Axis.horizontal,
                              physics: NeverScrollableScrollPhysics(),
                              child:  Container(
                              //decoration: BoxDecoration(border: Border.all(width:1,color: Colors.red)),
                              margin:EdgeInsets.only(top:0,left:30,right:30),
                              width:MediaQuery.of(context).size.width*.8,
                              padding: EdgeInsets.only(top:60,left:10),
                              height:MediaQuery.of(context).size.height*0.5,
                              child:Column(
                               // mainAxisAlignment: MainAxisAlignment.start,
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
                                      margin:EdgeInsets.only(top:10,right:30),
                                      width:MediaQuery.of(context).size.width,
                                      padding: EdgeInsets.only(top:50),
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
                          ),
                          AuthPage(),
      ],
    );
                      //AuthPage(),
  }
}