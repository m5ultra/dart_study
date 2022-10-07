import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('单组建滚动列表'),
      ),
      body: const SingleChildScrollViewDemo(),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              OutlinedButton(onPressed: () {}, child: const Text('按钮1')),
              OutlinedButton(onPressed: () {}, child: const Text('按钮2')),
              OutlinedButton(onPressed: () {}, child: const Text('按钮3')),
              OutlinedButton(onPressed: () {}, child: const Text('按钮4')),
              OutlinedButton(onPressed: () {}, child: const Text('按钮5')),
              OutlinedButton(onPressed: () {}, child: const Text('按钮6')),
              OutlinedButton(onPressed: () {}, child: const Text('按钮7')),
            ],
          ),
        ),
        SingleChildScrollView(
          reverse: true,
          child: Column(
            children: List.generate(
                100,
                (index) =>
                    OutlinedButton(onPressed: () {}, child: Text('按钮$index'))),
          ),
        ),
      ],
    );
  }
}
