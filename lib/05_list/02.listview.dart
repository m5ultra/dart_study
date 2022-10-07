import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: const ListViewDemo(),
    );
  }
}

class ListViewDemo extends StatelessWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BaseListView(),
          const BaseListViewHorizontal(),
          ListViewBuilderDemo(),
          ListViewBuilderDemo02(),
        ],
      ),
    );
  }
}

/// 普通构造函数

class BaseListView extends StatelessWidget {
  const BaseListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(bottom: 10),
      child: ListView(
        children: const [
          ListTile(
            leading: Icon(
              Icons.add,
              size: 50,
            ),
            title: Text('aaa'),
            subtitle: Text('111'),
            trailing: Icon(Icons.close),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              size: 50,
            ),
            title: Text('aaa'),
            subtitle: Text('222'),
            trailing: Icon(Icons.close),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              size: 50,
            ),
            title: Text('aaa'),
            subtitle: Text('333'),
            trailing: Icon(Icons.close),
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              size: 50,
            ),
            title: Text('aaa'),
            subtitle: Text('444'),
            trailing: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}

class BaseListViewHorizontal extends StatelessWidget {
  const BaseListViewHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[50],
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(
          10,
          (index) => SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('$index', style: const TextStyle(fontSize: 30))],
            ),
          ),
        ),
      ),
    );
  }
}

class ListViewBuilderDemo extends StatelessWidget {
  final List<Widget> _list01 = List.generate(50,
      (index) => OutlinedButton(onPressed: () {}, child: Text('这是第$index个按钮')));

  ListViewBuilderDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.red[100],
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: _list01.length,
        itemBuilder: (BuildContext c, index) {
          return _list01[index];
        },
      ),
    );
  }
}

class ListViewBuilderDemo02 extends StatelessWidget {
  final List<Widget> _list02 = List.generate(50,
      (index) => OutlinedButton(onPressed: () {}, child: Text('这是第$index个按钮')));

  ListViewBuilderDemo02({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.purple[100],
      child: ListView.separated(
        reverse: true,
        padding: const EdgeInsets.all(10),
        itemCount: _list02.length,
        itemBuilder: (BuildContext c, index) {
          return _list02[index];
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      ),
    );
  }
}
