import 'package:flutter/material.dart';
import 'package:flutter_myapp/NetWorkPage.dart';
import 'package:flutter_myapp/GridDemo1Page.dart';

class BottomWidget extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomWidgetState();
  }

}

class BottomWidgetState extends State<StatefulWidget> with AutomaticKeepAliveClientMixin{
  int  _currentIndex = 0;
  final List<Widget> _children = [NetWorkPage(), GridDemo1Page()];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: new BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),
            title: new Text("首页",),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book,),
              title: new Text("我的",)),
        ],
          currentIndex: _currentIndex,

          onTap: (int i){
            setState(() {
              _currentIndex = i;

            });
          },),
      ),
    );

  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;

}