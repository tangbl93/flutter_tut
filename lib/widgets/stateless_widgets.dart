import 'package:flutter/material.dart';

/// 静态小部件
void main() => runApp(
    MYStatelessWidget()
);

class MYStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      // Text 组件必须设置方向，否则会报错
      child: Text('MYStatelessWidget', textDirection: TextDirection.ltr),
    );
  }
}

