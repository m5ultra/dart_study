import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('标题'),
        leading: const Icon(Icons.menu),
        actions: const [
          Icon(Icons.settings)
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const Hello(),
    );
  }
}


class Hello extends StatelessWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Center(
      child: Text(
        'Hello, Flutter!',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
