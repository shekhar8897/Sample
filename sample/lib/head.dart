import 'package:flutter/material.dart';
import 'package:sample/pages/index.dart';


class HeaderPage extends StatelessWidget  {
  final Function onMenuTap;
  const HeaderPage({Key key,this.onMenuTap}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
                          onPressed: onMenuTap,
                        ),
                      ),
                      
                     
                    ],
                  ),
                  IndexPage(),
                ],
              ),
            ),
          ),
    );
  }
}
