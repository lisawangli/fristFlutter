import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ListViewPageState();
  }

}

class _ListViewPageState extends State<ListViewPage>{
  @override
  Widget build(BuildContext context) {
    List<Widget> list = <Widget>[];
    for(int i = 0;i<30;i++){
      list.add(new ListTile(
        title: new Text("title$i",style: _itemStyle,),
        subtitle: i%2==0?new Text("A"):new Text("B"),
        leading: i%3==0 ? new Icon(Icons.theaters,color: Colors.blue,):new Icon(Icons.restaurant,color:Colors.blue),
      ));
    }
    return new Scaffold(
      appBar: new AppBar(title: new Text('listViewDemo'),),
      body: new Center(child: new ListView(children: list,),),
    );
  }

  TextStyle _itemStyle = new TextStyle(
    fontWeight: FontWeight.w500,fontSize: 14.0
  );
}