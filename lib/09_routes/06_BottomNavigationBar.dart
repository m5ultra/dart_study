import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home), label: '首頁', backgroundColor: Colors.blue),
    const BottomNavigationBarItem(
        icon: Icon(Icons.message), label: '消息', backgroundColor: Colors.green),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '購物車',
        backgroundColor: Colors.amber),
    const BottomNavigationBarItem(
        icon: Icon(Icons.person), label: '我的', backgroundColor: Colors.purple),
  ];

  final List<Widget> pages = [
    const Center(
      child: Text(
        '首頁',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        '消息',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        '購物車',
        style: TextStyle(fontSize: 40),
      ),
    ),
    const Center(
      child: Text(
        '我的',
        style: TextStyle(fontSize: 40),
      ),
    ),
  ];

  late int currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  void switchPage(int i) {
    print(i);
    if (i == currentIndex) return;
    setState(() {
      currentIndex = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('底部导航'),
        centerTitle: true,
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          switchPage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }
}
