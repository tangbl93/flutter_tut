import "package:flutter/material.dart";

void main() => runApp(
  MyWidgets()
);

class MyWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyWidgets"),
        ),
        body: Center(
          child: Text(
            "Proin sed urna mauris. Nam dignissim quam arcu, quis pulvinar justo condimentum quis. Integer malesuada varius malesuada. Duis pharetra pellentesque sapien at accumsan. Donec vel ornare nisi, id pharetra nisl. Vestibulum at mauris purus. Nulla congue enim non ultricies dignissim. Aliquam enim libero, semper sit amet risus vitae, dictum scelerisque neque. Aliquam mollis, felis eu lacinia molestie, neque urna vulputate ipsum, et vulputate arcu quam eu felis. Curabitur pulvinar mauris convallis, ultrices mi ut, tempus ipsum. Phasellus nec metus sed nunc consequat euismod ac at erat. Donec bibendum nulla a mi mollis aliquet.",
            // 文本对齐方式: left,right 左右对齐；start，end 左右对齐(兼顾阿拉伯语)，
            // center 居中对齐，justify 铺满整个宽度
            textAlign: TextAlign.start,
            // 文本方向，ltr, rtl 两种
            textDirection: TextDirection.ltr,
            // 最大行数
            maxLines: 3,
            // 是否限制宽度，不限制时，会一行显示整段文本
            // softWrap: false,
            // 超出文本区域显示样式
            // clip: 裁剪超出区域部分文字
            // fade: 将超出部分区域设为透明
            // ellipsis: 以...符号代表超出部分文字
            // visible: 在区域外也显示超出部分文字（好像没什么效果）
            overflow: TextOverflow.ellipsis,
            // 文字样式
            style: TextStyle(
              fontSize: 18,  // 字体大小
              fontFamily: "YuanTi SC",  // 字体样式
              color: Colors.red, // 字体颜色
              // letterSpacing: 8.0, // 字符间距
              // wordSpacing: 8.0, // 单词间距
              // decoration 装饰器
              decoration: TextDecoration.underline,
              // decorationStyle 装饰器样式
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
        ),
      ),
    );
  }
}
