import 'package:flutter/material.dart';

class GridDemo1Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _GridDemo1PageState();
  }

}

class _GridDemo1PageState extends State<GridDemo1Page>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(title: new Text("grid page1 Demo"),),
      body: new Center(
        child: buildGrid(),
      ),
    );
  }

  List<Container> _builderGridTileList(int count){
    return new List<Container>.generate(count, (int index) => new Container( child: new Image.asset("images/a${index+1}.png"),));
  }

  Widget buildGrid(){
    return new GridView.extent(maxCrossAxisExtent: 150,
    padding: const EdgeInsets.all(4),
    mainAxisSpacing: 4.0 ,
    crossAxisSpacing: 4.0,
      children: _builderGridTileList(30),
    );
  }
}