import "package:flutter/material.dart";

void main() => runApp(
    MaterialApp(
      home: MYNavigator(),
    )
);

// 数据回传
class MYNavigator extends StatelessWidget {
  // https://www.jianshu.com/p/95c0dd5c09a2
  var _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("查看紧急电话"),
      ),
      body: Center(
//        child: MYRaisedButton(),
        child: RaisedButton(
          child: Text("查看紧急电话"),
          onPressed: () {
            _navigateToBusyCall(context);
          }
        )
      )
    );
  }

  _navigateToBusyCall(BuildContext context) async {
    final String result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => MYNavigatorPage()));

    // 显示路由返回的文案
    if (result.length > 0) {
//      Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
      _scaffoldkey.currentState.showSnackBar(SnackBar(content: Text(result)));
    }

  }
}

// https://blog.csdn.net/Swallow_Baby/article/details/88898829
class MYRaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        child: Text("查看紧急电话"),
        onPressed: () {
          _navigateToBusyCall(context);
        }
    );
  }

  // 路由跳转方法，加前缀_表示是私有方法
  // async 表示当前方法为异步执行的方法
  // await 表示等待语句执行完成后获取结果
  _navigateToBusyCall(BuildContext context) async {
    final String result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => MYNavigatorPage()));

    // 显示路由返回的文案
    if (result.length > 0) {
      Scaffold.of(context).showSnackBar(SnackBar(content: Text(result)));
    }
  }
}


class MYNavigatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("紧急电话选择"),
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("110"),
              onPressed: () {
                Navigator.pop(context, "110");
              },
            ),
            RaisedButton(
              child: Text("119"),
              onPressed: () {
                Navigator.pop(context, "119");
              },
            ),
            RaisedButton(
              child: Text("120"),
              onPressed: () {
                Navigator.pop(context, "120");
              },
            ),
          ],
        ),
      ),
    );
  }
}
