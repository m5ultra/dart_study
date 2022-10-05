import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('线性布局'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {
  const ColumnRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const Icon(
            Icons.access_alarm,
            size: 50,
            color: Colors.white,
          ),
          const Icon(Icons.add, size: 50),
          const Icon(Icons.safety_check, size: 50),
          const Icon(Icons.menu, size: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
            Icon(
              Icons.access_alarm,
              size: 50,
              color: Colors.white,
            ),
            Icon(Icons.add, size: 50),
            Icon(Icons.safety_check, size: 50),
            Icon(Icons.menu, size: 50),
          ],)
        ],
      ),
    );
  }
}
