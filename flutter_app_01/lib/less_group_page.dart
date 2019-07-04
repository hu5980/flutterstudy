import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

//void main() => runApp(LessGroupPage());

class LessGroupPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = TextStyle(fontSize: 30);

    return MaterialApp(
      title: 'StatelessWidget与基础组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("StatelessWidget与基础组件"),
        ),
        body: new Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(children: <Widget>[
            Text(
              'I am Text',
              style: textStyle,
            ),
            Icon(Icons.android,size: 50,color: Colors.red,),
            CloseButton(),
            BackButton(),
            Chip(
              avatar:Icon(Icons.people) ,
                label: Text('StatelessWidget与基础组件')
            ),
            Divider(height: 10,
              indent: 10,
              color: Colors.orange,),
            Card(color: Colors.blue,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(50),
                child: Text(
                    'I am Card  哈哈',
                  style: textStyle,
                )
              ),
            ),
            AlertDialog(title: Text('盘他'),
              content: Text('你这个遭老头子，坏的很'),
            )
          ],
          ),
        ),
      ),
    );
  }
}

