import 'package:flutter/material.dart';
import 'package:flutter_app_01/less_group_page.dart';
import 'package:flutter_app_01/statefull_group_page.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

void main() => runApp(StateFullGroup());


class PluginUse extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '如何使用flutter包和插件？',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:new Scaffold(
        appBar: new AppBar(
          backgroundColor: ColorUtil.color("ff0000"),
          title: new Text("欢迎使用 Flutter"),
        ),
        body: new Center(
          child: new Text("你好中国" ,style: TextStyle(color: ColorUtil.color("ff0000")))
        ),
      )
    );
  }
}

