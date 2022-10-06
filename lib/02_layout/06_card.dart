import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('卡片组建'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: const CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {
  const CardDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: const EdgeInsets.all(20),
          color: Colors.blueGrey[200],
          // clipBehavior: Clip.hardEdge,
          shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.green, width: 5),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          shadowColor: Colors.red,
          elevation: 10,
          child: Column(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 50,
                ),
                title: Text(
                  '蔡英文',
                  style: TextStyle(fontSize: 26, color: Colors.black87),
                ),
                subtitle: Text(
                  '党主席',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
              Divider(color: Color(0xFF000000)),
              ListTile(
                title: Text('电话: 12344445555'),
              ),
              ListTile(
                title: Text('地址: 中华民国台北市北京路'),
              ),
            ],
          ),
        ),
        Card(
          color: Colors.blueGrey[200],
          child: Column(
            children: const [
              ListTile(
                leading: Icon(
                  Icons.person,
                  size: 50,
                ),
                title: Text(
                  '蔡英文',
                  style: TextStyle(fontSize: 26, color: Colors.black87),
                ),
                subtitle: Text(
                  '党主席',
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
              ),
              Divider(color: Color(0xFF000000)),
              ListTile(
                title: Text('电话: 12344445555'),
              ),
              ListTile(
                title: Text('地址: 中华民国台北市北京路'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
