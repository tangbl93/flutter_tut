import "package:flutter/material.dart";

void main() => runApp(MYStackWidget());

class MYStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MYStackWidget"),
        ),
        body: Center(
          child: PositionedStackWidget(),
        ),
      ),
    );
  }
}

// 简单的层叠组件，仅适合两个组件重叠布局
class SimpleStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment 设置对齐方式（子组件之间的对齐方式）
      alignment: Alignment.center,
      children: <Widget>[
        // 圆角图片
        Container(
          width: 200,
          height: 200,
          color: Colors.lightBlue,
        ),
        // 文字
        Text("Stack 1"),
        Text("Stack 2"),
        Text("Stack 3"),
      ],
    );
  }
}

// 结合 Positioned 的层叠组件,可以自由控制坐标
class PositionedStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment 设置对齐方式（子组件之间的对齐方式）
      alignment: Alignment.center,
      children: <Widget>[
        // 圆角图片
        Container(
          width: 200,
          height: 200,
          color: Colors.lightBlue,
        ),
        // 文字
        Positioned(
          top: 20,
          child: Text("Stack 1"),
        ),
        Positioned(
          top: 60,
          child: Text("Stack 2"),
        ),
        Positioned(
          top: 100,
          child: Text("Stack 3"),
        ),
      ],
    );
  }
}
