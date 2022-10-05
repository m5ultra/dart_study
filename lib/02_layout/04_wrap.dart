import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('wrap'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  const WrapDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> _list01 = ['刘备', '关羽', '张飞', '赵云', '马超', '诸葛亮', '黄忠'];

    List<String> _list02 = ['曹操', '曹丕', '司马懿', '曹仁', '马超', '诸葛亮', ];

    List<Widget> _shuGuo = _list01
        .map(
          (v) => Chip(
            avatar: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text('蜀'),
            ),
            label: Text(v),
          ),
        )
        .toList();

    List<Widget> _weiGuo = _list02
        .map(
          (v) => Chip(
            avatar: const CircleAvatar(
              backgroundColor: Colors.pink,
              child: Text('魏'),
            ),
            label: Text(v),
          ),
        )
        .toList();
    return Column(
      children: [
        Wrap(
          spacing: 10.0,
          runSpacing: 10,
          alignment: WrapAlignment.spaceEvenly,
          runAlignment: WrapAlignment.spaceAround,
          children: _weiGuo,
        ),
        Wrap(
          children: _shuGuo,
        ),

      ],
    );
  }
}
