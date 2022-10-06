import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('stack demo'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
      ),
      body: const StackDemo(),
    );
  }
}

// https://i2.hdslb.com/bfs/face/58985354ba6421abd25a007e8602a4eb8f8a6074.jpg@160w_160h_1c_1s.webp
class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        textDirection: TextDirection.rtl,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'http://i2.hdslb.com/bfs/face/58985354ba6421abd25a007e8602a4eb8f8a6074.jpg@160w_160h_1c_1s.webp'),
            radius: 200,
          ),
          Positioned(
            top: 10,
            right: 10,
            // height: 100,
            child: Container(
              // 巨坑 如果写了 decoration: const BoxDecoration()  再给容器增加 color 属性 就会报错
              // color: Colors.black26,
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              decoration: const BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: const Text(
                '热卖',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Text(
            '你好世界',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
