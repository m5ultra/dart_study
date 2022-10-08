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
        title: const Text('生命周期'),
      ),
      body: const SafeArea(child: CountDemo()),
    );
  }
}

class CountDemo extends StatefulWidget {
  const CountDemo({Key? key}) : super(key: key);

  @override
  State<CountDemo> createState() => _CountDemoState();
}

class _CountDemoState extends State<CountDemo> {
  late int num = 0;

  @override
  void initState() {
    print('initState');
    super.initState;
    num = 8;
  }

  @override
  didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  didUpdateWidget(covariant CountDemo oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  increment() {
    setState(() {
      num += 1;
    });
  }

  minus() {
    setState(() {
      print('setState');
      num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Container(
      color: Colors.purple[50],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: minus, child: const Text("Decrement02")),
          Text(
            '$num',
            style: const TextStyle(fontSize: 20),
          ),
          ElevatedButton(onPressed: increment, child: const Text('Increment')),
        ],
      ),
    );
  }
}
