import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
// void check(BuildContext context)
  // {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (_){
  //     return Container(child:Text('hello'));
  //   }));
  // }
 final Animation<double> menuScaleAnimation;
 final  Animation<Offset> slideAnimation;

  Menu({this.slideAnimation,this.menuScaleAnimation});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
          child: SlideTransition(
        
        position: slideAnimation,
        child: ScaleTransition(
          
          scale: menuScaleAnimation,
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
          //         RichText(
          //   text: new TextSpan(
          //     children: [
          //        new TextSpan(
          //         text: 'but this is',
          //         style: new TextStyle(color: Colors.blue),
          //         recognizer: new TapGestureRecognizer()
          //           ..onTap = () { print('Tap');
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          //  RichText(
          //   text: new TextSpan(
          //     children: [
          //        new TextSpan(
          //         text: 'second ',
          //         style: new TextStyle(color: Colors.blue),
          //         recognizer: new TapGestureRecognizer()
          //           ..onTap = ()=> check(context),
                  
          //       ),
          //     ],
          //   ),
          // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}