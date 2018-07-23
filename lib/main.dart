import 'package:flutter/material.dart';
import 'index/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '仿-深圳地铁',
      home: new Home(),
    );
  }
}

