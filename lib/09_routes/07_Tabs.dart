import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final List<Widget> _tabs = [
    const Tab(
      text: '首页',
      icon: Icon(Icons.home),
    ),
    const Tab(
      text: '添加',
      icon: Icon(Icons.add),
    ),
    const Tab(
      text: '搜索',
      icon: Icon(Icons.search),
    ),
  ];
  final List<Widget> _tabs2 = [
    const Tab(
      text: '首页',
    ),
    const Tab(
      text: '添加',
    ),
    const Tab(
      text: '搜索',
    ),
  ];
  final List<Widget> _views = const [
    Icon(Icons.home, size: 50, color: Colors.purple),
    Icon(Icons.add, size: 50, color: Colors.red),
    Icon(Icons.search, size: 50, color: Colors.amber),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab'),
          bottom: TabBar(
            tabs: _tabs2,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black87,
            indicatorSize: TabBarIndicatorSize.tab,
          ),
          toolbarHeight: 0, // 隐藏title  顶部组建
        ),
        body: TabBarView(
          children: _views,
        ),
        bottomNavigationBar: TabBar(
          tabs: _tabs,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black87,
        ),
      ),
    );
  }
}
