import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('详情页面'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const DetailPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: const Text('返回')),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detail'),
              child: const Text('跳转详情')),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detail/1'),
              child: const Text('跳转详情01')),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/detail/2'),
              child: const Text('跳转详情02')),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '未知'),
              child: const Text('触发未知路由 404')),
        ],
      ),
    );
  }
}

class Unknown extends StatelessWidget {
  const Unknown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const UnknownPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class UnknownPage extends StatefulWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: const Text('返回'))
        ],
      ),
    );
    ;
  }
}

class Detail2 extends StatelessWidget {
  final String id; // 可以通过Provider 传递给子组建
  const Detail2({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(id);
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品详情页面'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const Detail2Page(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
    );
  }
}


class Detail2Page extends StatefulWidget {
  const Detail2Page({Key? key,}) : super(key: key);

  @override
  State<Detail2Page> createState() => _Detail2PageState();
}

class _Detail2PageState extends State<Detail2Page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('商品🆔 是'),
          ElevatedButton(onPressed: () => Navigator.pop(context), child: const Text('Back'))
        ],
      ),
    );
  }
}
