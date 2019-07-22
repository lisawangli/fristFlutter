import 'package:flutter/material.dart';

class StackPage1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StackPageState();
  }

}

class  _StackPageState extends State<StackPage1>{
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
     alignment: const Alignment(0.6, 0.6),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new AssetImage("images/a10.png"),
          radius: 100.0,
        ),
        new Container(decoration: new BoxDecoration(color: Colors.black45),
        child:new Text("android avatar",style: new TextStyle(color: Colors.white70),),),
        new Container(
          decoration: new BoxDecoration(color: Colors.transparent),
          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: new CircleAvatar(backgroundImage: new AssetImage("images/b10.png"),
          backgroundColor: Colors.transparent,
          radius: 50.0,),
        )
      ],
    );
    return new Scaffold(
      appBar: new AppBar(title: new Text('Stack Demo 1'),),
      body: new Center(child: stack,),
    );
  }

}