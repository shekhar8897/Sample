import 'package:flutter/material.dart';
import 'package:sample/AuthPage.dart';


class HomePage extends StatefulWidget {
 // const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {


  bool isCollapsed = true;
  double screenWidth, screenHeight;
  final Duration duration = const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<double> _menuScaleAnimation;
  Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: duration);
    _scaleAnimation = Tween<double>(begin: 1, end: 0.8).animate(_controller);
    _menuScaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _slideAnimation = Tween<Offset>(begin: Offset(-1, 0), end: Offset(0, 0)).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

Widget menu(context) {
    return Container(
      color: Colors.black,
          child: SlideTransition(
        
        position: _slideAnimation,
        child: ScaleTransition(
          
          scale: _menuScaleAnimation,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Home", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Profile", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Utility Bills", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Funds Transfer", style: TextStyle(color: Colors.white, fontSize: 22)),
                  SizedBox(height: 10),
                  Text("Branches", style: TextStyle(color: Colors.white, fontSize: 22)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
Widget dashboard(context) {
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed ? 0 : 0.5 * screenWidth,
      right: isCollapsed ? 0 : -0.3 * screenWidth,
      
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 8,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Container(
                        margin:EdgeInsets.only(top:25,left:30),
                        height:120,
                        //width:MediaQuery.of(context).size.width,
                        child:IconButton(
                          //icon: Icon(Icons.menu),
                          icon: Image.asset('assets/icons/menu.png',height: 50,width: 25,),
                          onPressed: (){
                             setState(() {
                            if (isCollapsed)
                              _controller.forward();
                            else
                              _controller.reverse();

                            isCollapsed = !isCollapsed;
                          });
                          },
                        ),
                      ),
                      SingleChildScrollView(
                        
                        scrollDirection: Axis.horizontal,
                          physics: NeverScrollableScrollPhysics(),
                          child: new Container(
                          //decoration: BoxDecoration(border: Border.all(width:1,color: Colors.red)),
                          margin:EdgeInsets.only(top:0,left:30,right:30),
                          width:MediaQuery.of(context).size.width*.8,
                          padding: EdgeInsets.only(top:60,left:10),
                          height:MediaQuery.of(context).size.height*0.5,
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
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    screenHeight = size.height;
    screenWidth = size.width;

    return Scaffold(
     body:new Stack(
       children: <Widget>[
          menu(context),
          dashboard(context),
          
       ],
     ),
    );
  }
}
