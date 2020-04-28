import "package:flutter/material.dart";

void main() => runApp(MYRowWidget());

class MYRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("垂直方向布局"),
        ),
        body: Column(
          // Expanded 组件可以平分容器大小
          children: <Widget>[
            Expanded(
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.red,
                  child: Text("RedColor"),
                )),
            Expanded(
                child: RaisedButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text("Blue Color"),
                )),
            Expanded(
                child: RaisedButton(
                  color: Colors.green,
                  onPressed: () {},
                  child: Text("Green Color"),
                )),
          ],
        ),
      ),
    );
  }
}
