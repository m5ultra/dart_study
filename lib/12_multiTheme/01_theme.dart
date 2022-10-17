import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello World',
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.subtitle1?.fontSize,
                    color: Theme.of(context).textTheme.subtitle1?.color),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Click me'),
              ),
              // 使用全局样式 main iconThemeData中样式
              const Icon(Icons.settings),
              // 指定样式
              Icon(
                Icons.settings,
                color: Theme.of(context).colorScheme.secondary,
              ),
              // 使用theme 定义样式
              Theme(
                data: ThemeData(
                    iconTheme: const IconThemeData(color: Colors.blueAccent)),
                child: const Icon(Icons.settings),
              ),
            ],
          ),
        ));
  }
}
