import "package:flutter/material.dart";

void main() => runApp(
  MYCardWidget()
);

// 材质化卡片组件
class MYCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MYCardWidget"),
        ),
        body: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Card 1 title"),
                subtitle: Text("Card 1 subtitle"),
              ),
              Divider(),  // 分割线组件
              ListTile(
                title: Text("Card 2 title"),
                subtitle: Text("Card 2 subtitle"),
              ),
              Divider(),
              ListTile(
                title: Text("Card 3 title"),
                subtitle: Text("Card 3 subtitle"),
              ),
              Divider(),
              ListTile(
                title: Text("Card 4 title"),
                subtitle: Text("Card 4 subtitle"),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
