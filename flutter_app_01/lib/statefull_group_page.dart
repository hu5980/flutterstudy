import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';

//void main() => runApp(LessGroupPage());



class StateFullGroup extends StatefulWidget {
  _StateFullGroupState createState() => _StateFullGroupState();
}


class _StateFullGroupState extends State<StateFullGroup> {
  @override
  Widget build(BuildContext context) {

    int _currentIndex = 0;
    TextStyle textStyle = TextStyle(fontSize: 20);

    return MaterialApp(
      title: 'StateFullGroupState与基础组件',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("_StateFullGroupState基础组件"),
        ),
        bottomNavigationBar: BottomNavigationBar(currentIndex: _currentIndex,onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        }, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),
          activeIcon: Icon(Icons.home,color:Colors.blue),
          title: Text('首页')),
          BottomNavigationBarItem(icon: Icon(Icons.list,color: Colors.grey,),
          activeIcon: Icon(Icons.list,color: Colors.blue,),
          title:Text('列表') )]
        ),
        floatingActionButton: FloatingActionButton(onPressed: null,child: Text('点我'),),
        body: _currentIndex == 0
            ? RefreshIndicator(child: ListView(children: <Widget>[Container(
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
                label: Text('_StateFullGroupState基础组件')
            ),
            Divider(height: 10,
              indent: 10,
              color: Colors.orange,),
            Card(color: Colors.blue,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: Container(
                  padding: EdgeInsets.all(10),
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
        )],), onRefresh: _handRefresh)
            : Text('显示列表'),
      ),
    );
  }

  Future<Null> _handRefresh() async{
    await Future.delayed(Duration(microseconds: 2000));
        return null;
  }
}


