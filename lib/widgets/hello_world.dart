import 'package:flutter/material.dart';

void main() => runApp(
   MyApp()
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // MaterialApp  窗口组件
    return MaterialApp(
      title: "Welcome to Futter",
      // Scaffold 内容组件
      home: Scaffold(
        // AppBar 导航栏
        appBar: AppBar(
          title: Text("Welcome to Futter"),
        ),
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}


