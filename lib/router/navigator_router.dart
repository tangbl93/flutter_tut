import "package:flutter/material.dart";

void main() => runApp(MaterialApp(
      home: MYNavigator(),
    ));

// 基础路由跳转
// 如果报错误: Navigator operation requested with a context that does not include a Navigator.
// 就将MaterialApp从build方法抽出去，放在runApp那
class MYNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MYNavigator"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("前往商品详情页"),
          onPressed: () {
            // Navigator.push 跳转到指定页面,传入BuildContext，MaterialPageRoute对象
            // MaterialPageRoute 通过 builder 方法传入闭包，在闭包返回页面
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MYNavigatorPage()));
          },
        ),
      ),
    );
  }
}

class MYNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MYNavigatorPage"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回上一页"),
          onPressed: () {
            // Navigator.pop 返回上一页
            Navigator.pop(context);
          }
        ),
      ),
    );
  }
}
