import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('按钮组建'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const ImageDemo(),
    );
  }
}

class ImageDemo extends StatelessWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue[50],
      child: Column(
        children: [
          const Text('图片使用'),
          Image.asset('images/android-chrome-192x192.png'),
          Image.network(
            'https://img14.360buyimg.com/n0/jfs/t1/98075/31/32789/73025/6324a6d5E0badc088/7017967a2087ea19.jpg.avif',
            width: 200,
          ),
          TextButtonTheme(
            data: TextButtonThemeData(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 48),
                ),
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
          ),
        ],
      ),
    );
  }
}
