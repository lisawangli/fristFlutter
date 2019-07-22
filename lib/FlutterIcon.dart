import 'package:flutter/material.dart';

double _volume = 0.0;

class MyStatefulWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyStateFullWidgetState();
  }

}

class MyStateFullWidgetState extends State<MyStatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: IconButton(icon: Icon(Icons.volume_up),
          tooltip: "Increase volume by 10%$_volume",
          onPressed: (){
            setState(() {
              _volume *= 1.1;
            });
          }),
    );
  }

}