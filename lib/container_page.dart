import 'package:flutter/material.dart';

/// container示例界面
class ContainerDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _ContainerDemoPageState();
}

class _ContainerDemoPageState extends State<ContainerDemoPage> {
  @override
  Widget build(BuildContext context) {
    Expanded imageExpanded(String img) {
      return new Expanded(child: new Container(
        decoration: new BoxDecoration(
            border: new Border.all(width: 10.0, color: Colors.black38),
            borderRadius: const BorderRadius.all(
                const Radius.circular(8.0))),
        margin: const EdgeInsets.all(4.0),
        child: new Image.asset(img),
      ));
    }

    var container = new Container(
      decoration: new BoxDecoration(color: Colors.black26),
      child: new Column(
        children: <Widget>[
          new Row(children: <Widget>[
            imageExpanded('images/a1.png'),
            imageExpanded('images/a2.png'),
          ],),
          new Row(children: <Widget>[
            imageExpanded('images/b1.png'),
            imageExpanded('images/b2.png'),
          ],),
          new Row(children: <Widget>[
            imageExpanded('images/c1.png'),
          ],)
        ],
      ),
    );

    return new Scaffold(
      appBar: new AppBar(title: new Text('Container Page demo'),),
      body: new Center(
        child: container,
      ),
    );
  }
}
