import "package:flutter/material.dart";

void main() => runApp(
  MYContainer()
);

// 容器，如果没有子组件的话，就默认填充满空间，否则会尽可能适应子组件
class MYContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MYContainer"),
        ),
        body: Container(
          child: Text("MYContainer", style: TextStyle(fontSize: 40),textAlign: TextAlign.center,),
          // 背景色
          // color: Colors.lightBlueAccent,
          // 强制设置大小
          width: 414, height: 500,
          // 设置内容对齐方式
          alignment: Alignment.center,
          // padding 内边距，margin 外边距
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          margin: const EdgeInsets.all(12),
          // decoration 装饰器, 会与color背景色冲突
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.lightBlue, Colors.greenAccent, Colors.purple],
            ),
            border: Border.all(width: 2, color: Colors.red)
          ),
        ),
      ),
    );
  }
}
