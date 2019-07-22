import 'package:flutter_myapp/StackPage1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_myapp/container_page.dart';
import 'package:flutter_myapp/listViewCardPage.dart';

class HomePage  extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    getGestureDetector(String ruteName,String content){
      return new GestureDetector(
        onTap: (){
          Navigator.of(context).pushNamed(ruteName);
        },
        child: new Container(
          padding: EdgeInsets.all(20.0),
          child: new Center(child: new Text(content),),
        ),
      );
    }
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("Home"),),
      body: new Column(children: <Widget>[
        getGestureDetector("/a", "StackPage1"),
        getGestureDetector("/b", "container_page"),
        getGestureDetector("/c", "listViewCardPage"),

      ],),
    );
  }

}