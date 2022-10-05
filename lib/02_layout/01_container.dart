import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('布局'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      // width: double.infinity,
      // height: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(10, 30, 0, 5),
      decoration: BoxDecoration(
          // border: Border(
          //     top: BorderSide(width: 10, color: Colors.red),
          //     bottom: BorderSide(width: 10, color: Colors.red),
          //     right: BorderSide(width: 10, color: Colors.red),
          //     left: BorderSide(width: 10, color: Colors.red)
          // ),
          border: Border.all(color: Colors.blue, width: 5),
          // borderRadius: BorderRadius.all(Radius.circular(30)),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30)),
          color: Colors.lightGreen[100], // 背景色
          // 设置渐变后 背景色失效
          gradient:
              const LinearGradient(colors: [Colors.blue, Colors.white30])),
      alignment: Alignment.center,
      // transform: Matrix4.translationValues(100, 0, 0),
      // transform: Matrix4.rotationZ(-0.1),
      // transform: Matrix4.skewX(0.2),
      child: const Text(
        'Flutter 为软件开发行业带来了革新：只要一套代码库，即可构建、测试和发布适用于移动、Web、桌面和嵌入式平台的精美应用。',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
