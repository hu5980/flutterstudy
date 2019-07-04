import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Fultter',
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("Welcome to Flutter"),
        ),
        body: new Center(
          child: new Text("Hello world"),
        ),
      )
    );
  }
}

