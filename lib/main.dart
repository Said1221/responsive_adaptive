import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component.dart';
import 'package:responsive_adaptive/mobile.dart';
import 'package:responsive_adaptive/web.dart';

void main() async{

  if(Platform.isWindows){
    await DesktopWindow.setMinWindowSize(Size(650, 650));
  }


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: LayoutBuilder(builder: (BuildContext context , BoxConstraints constraints){
        print(constraints.minWidth.toInt());
        if(constraints.minWidth.toInt() <= 660){
          return mobile();
        }
        return web();
        },
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

