import 'package:flutter/material.dart';

class ScreenArguments {
  final String name;
  final num age;

  ScreenArguments(this.name, this.age);
}

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
    final ScreenArguments args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    return Center(
      child: Column(
        children: [
          Text('命名路由传递参数name: ${args.name}'),
          Text('命名路由传递参数name: ${args.age}'),
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
              onPressed: () => Navigator.pushNamed(
                    context,
                    'Detail',
                    arguments: ScreenArguments('Deni', 88),
                  ),
              child: const Text('跳转详情')),
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
