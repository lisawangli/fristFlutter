import 'package:flutter/material.dart';
import 'dart:io';

class FlutterImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var img = Image.network(
      "https://upload.jianshu.io/users/upload_avatars/3884536/d847a50f1da0.jpg?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240",
      repeat: ImageRepeat.repeatY,
    );
    return Scaffold(
      body: Container(
        child: img,
        constraints: BoxConstraints.expand(//对Image的约束
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height),
      ),
    );  }

}