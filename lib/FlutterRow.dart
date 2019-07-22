import 'package:flutter/material.dart';

class FlutterRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text("one"),
          Text("two"),
          Text("Three"),
        ],
      ),
    );
  }

}