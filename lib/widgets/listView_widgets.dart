import "package:flutter/material.dart";

void main() => runApp(ListViewWidget());

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewWidget()"),
        ),
        body: BuilderListView(
          // 生成器构造数据
          items: List<String>.generate(100, (index) => "Item ${index}")
        ),
      ),
    );
  }
}

// ListView 单页列表组件
// 通过 children 数组返回列表内容
class SimpleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.access_time),
          title: Text("access_time"),
        ),
        ListTile(
          leading: Icon(Icons.access_alarms),
          title: Text("access_alarms"),
        ),
        ListTile(
          leading: Icon(Icons.accessibility),
          title: Text("accessibility"),
        ),
      ],
    );
  }
}

// 横向滚动列表
class HorList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // 滑动方向
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        // 需要列表卡片撑开内容，否则无法显示
        Container(
          width: 200, height: 200,
          color: Colors.red,
        ),
        Container(
          width: 200, height: 200,
          color: Colors.greenAccent,
        ),
        Container(
          width: 200, height: 200,
          color: Colors.blueAccent,
        ),
        Container(
          width: 200, height: 200,
          color: Colors.amber,
        ),
        Container(
          width: 200, height: 200,
          color: Colors.indigo,
        ),
      ],
    );
  }
}

// ListBuilder
class BuilderListView extends StatelessWidget {

  // 类成员属性，设置为final，表示为不可变数据
  final List<String> items;
  // 构造函数,items参数设置为必须传入
  BuilderListView({Key key, @required this.items}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // 通过istView.builder方法生成列表组件
    return ListView.builder(
      // itemCount 需要生成组件的个数
      itemCount: items.length,
      // itemBuilder 生成组件的闭包,定义如下
      // typedef IndexedWidgetBuilder = Widget Function(BuildContext context, int index);
      itemBuilder: (context, index) {
        return ListTile(title: Text(items[index]));
      },
    );
  }
}
