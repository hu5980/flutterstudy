import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  var items = new List<String>.generate(100, (i) => "Itim $i");

   @override
  Widget build(BuildContext context) {



    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: LongListViewDemo(items: items,),
    );
  }
}

class ImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(body: 
    Center(
      child: Image.network(
          "http://pic1.win4000.com/pic/e/6f/5c43d8a44b.jpg",
        fit:BoxFit.fitHeight ,
      ),
    ),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: Container(
        width: 300,
        height: 400,
        decoration: new BoxDecoration(
          color: Colors.lightBlueAccent[100],
          border:  new Border.all(
            color: Colors.red,
            width: 20.0
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Text(
          "你好",
          style:
          TextStyle(
              fontSize: 20
          ),
        ),
      ),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: Text("List View Demo"),
    ), body: 
      ListView(children: <Widget>[
        ListTile(leading: Icon(Icons.alarm),title: Text("Alarm"),),
        ListTile(leading: Icon(Icons.title),title: Text("title"),),
        ListTile(leading: Icon(Icons.build),title: Text("build"),),
        ListTile(leading: Icon(Icons.pages),title: Text("pages"),),
        ListTile(leading: Icon(Icons.alarm),title: Text("Alarm"),),
        ListTile(leading: Icon(Icons.title),title: Text("title"),),
        ListTile(leading: Icon(Icons.build),title: Text("build"),),
        ListTile(leading: Icon(Icons.pages),title: Text("pages"),),
        ListTile(leading: Icon(Icons.alarm),title: Text("Alarm"),),
        ListTile(leading: Icon(Icons.title),title: Text("title"),),
      ],),
    ) ;
  }
}

class HorizontalListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      title: Text("水平方向ListView"),
    ),body: Container(
      margin: EdgeInsets.symmetric(vertical: 60),
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: <Widget>[
          Container(width: 150,height: 200,color: Colors.red,),
          Container(width: 150,height: 200,color: Colors.yellow,),
          Container(width: 150,height: 200,color: Colors.green,),
          Container(width: 150,height: 200,color: Colors.orange,),
          Container(width: 150,height: 200,color: Colors.deepPurple,),
        ],
      ),
    ),);
  }
}

class LongListViewDemo extends StatelessWidget {

  final List<String> items;

  //构造函数
  LongListViewDemo({Key key,@required this.items}):super(key:key);



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar:
    AppBar(title:
    Text("LongListViewDemo",
      style:TextStyle(fontSize: 20,color: Colors.white),
    ),
    ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context,index){
              return ListTile(
                leading: Icon(Icons.pages),
                title: new Text('${items[index]}'),
              );
            })
    );
  }
}

class GridListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

}