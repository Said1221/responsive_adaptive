
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adaptive extends StatelessWidget {

  String os;

  Adaptive({
   required this.os,
});

  @override
  Widget build(BuildContext context) {
    if(os=='android'){
      return CircularProgressIndicator();
    }
    return CupertinoActivityIndicator();
  }
}
