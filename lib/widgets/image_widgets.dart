import "package:flutter/material.dart";

void main() => runApp(
  MYImageWidget()
);

class MYImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MYImageWidget"),
        ),
        body: Center(
          child: Container(
//            // 网络图片
//            child:Image.network(
//              "http://img.mp.sohu.com/upload/20170601/af68bce89ac945e7ad00da688a25fb08.png",
//              // 覆盖模式 1. fill 填充满(可能变形)，contain 单边最大填充（不变形，不一定填充满）
//              // cover 填充满(不变形)，fitWidth，fitHeight 单边最大填充（不变形）
//              // none 略，默认大小
//              // fit: BoxFit.scaleDown,
//
//              // 平铺模式 1. repeat 横轴纵轴方向都平铺, 2. noRepeat略
//              // repeatX，repeatY 单个方向平铺
////              repeat: ImageRepeat.repeatY,
//
//              // 滤镜
//              color: Colors.blueAccent,
//              colorBlendMode: BlendMode.hardLight,
//
//            ),
            // 本地图片
            // 需要在pubspec.yaml中配置好
            // 不支持*通配符，而且Image.asset传入的地址需要与配置的一致（单独写文件名会报错）
            child: Image.asset(
                "assets/images/74eb858fcdf135cced868acd1b75f6c8.jpg"
            ),
            width: 400, height: 300,
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}