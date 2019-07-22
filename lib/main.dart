import 'package:flutter/material.dart';
import 'package:flutter_myapp/container_test.dart';
import 'package:flutter_myapp/GridDemo1Page.dart';
import 'package:flutter_myapp/GridDemo2Page.dart';
import 'package:flutter_myapp/listViewPage.dart';
import 'package:flutter_myapp/colors_demo.dart';
import 'package:flutter_myapp/StackPage1.dart';
import 'package:flutter_myapp/listViewCardPage.dart';
import 'package:flutter_myapp/FlutterTabBar.dart';
import 'package:flutter_myapp/FlutterIcon.dart';
import 'package:flutter_myapp/FlutterImage.dart';
import 'package:flutter_myapp/FlutterRow.dart';
import 'package:flutter_myapp/MyTextWidget.dart';
import 'package:flutter_myapp/FlutterTabBarView.dart';
import 'package:flutter_myapp/NetWorkPage.dart';
import 'package:flutter_myapp/bottom_widget.dart';


void main() => runApp(new GHFlutterApp());

class GHFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'GHFlutter',
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('GHFlutter'),
//        ),
//        body: new Center(
//          child: new RaisedButton(
//            textTheme: ButtonTextTheme.accent,
//            color: Colors.teal,
//            highlightColor: Colors.deepPurpleAccent,
//            splashColor: Colors.deepOrangeAccent,
//            colorBrightness: Brightness.dark,
//            elevation: 50.0,
//            highlightElevation: 100.0,
//            disabledElevation: 20.0,
//            onPressed: (){
//            print("click me");
//            },
//            child: Text("click me",style: TextStyle(color: Colors.white,fontSize: 40),),
//          ),
//        ),
//      ),
//    );

    return new MaterialApp(
      title: 'GHFlutter',
      theme: ThemeData(primaryColor: Colors.green),
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
       body: new BottomWidget(),
      )
//      home: new Scaffold(
//        appBar: new AppBar(
//          title: new Text('GHFlutter'),
//        ),
//        body: new Center(
//          child: new FloatingActionButton(
//            child: Icon(Icons.access_alarm),
//            tooltip: 'toolTip',
//            foregroundColor: Colors.white,
//            backgroundColor: Colors.deepPurple,
//            shape: const Border(),
//            onPressed: (){
//              print("click me....");
//            },
//          )
//        ),
//      ),
    );
  }
}

class FlutterDropDownButtonStatefulWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DropDownState();
  }


}

class _DropDownState extends State<FlutterDropDownButtonStatefulWidget>{
  String selectValue;

  @override
  Widget build(BuildContext context) {

    return DropdownButton(
      items: _getItems(),
      hint: Text("请选择城市"),
      value: selectValue,
      onChanged: (itemValue){
        _onChanged(itemValue);
        },
    );
  }
  _onChanged(String value) {
    //更新对象的状态
    setState(() {
      selectValue = value;
    });
  }
  List<DropdownMenuItem<String>> _getCityList(){
    var list = ["北京","上海","武汉","广州","深圳"];
    return list.map((item) => DropdownMenuItem(
      value: item,
      child: Text(item),
    )).toList();
  }

  List<DropdownMenuItem> _getItems(){
    List<DropdownMenuItem> items = new List();
    items.add(DropdownMenuItem(child: Text("北京"),value: "BJ",));
    items.add(DropdownMenuItem(child: Text("上海"),value: "SH",));
    items.add(DropdownMenuItem(child: Text("武汉"),value: "WH",));
    items.add(DropdownMenuItem(child: Text("广州"),value: "GZ",));
    items.add(DropdownMenuItem(child: Text("深圳"),value: "SZ",));
    return items;
  }

}
//void main() {
//  runApp(
//    new MaterialApp(
//      home: new HomePage(),
//        routes: {
//        "/a":(BuildContext context)=>new StackPage1(),
//          "/b":(BuildContext context) => new ContainerDemo(),
//          "/c":(BuildContext context) => new ListViewCardPage(),
//
//        },
//    )
//  );
//}
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      home: new ListViewCardPage(),
//    );
//  }
//}



