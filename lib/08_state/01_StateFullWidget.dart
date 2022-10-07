import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('有状态组建'),
      ),
      body: const SafeArea(child: StateWidgetDemo()),
    );
  }
}

class StateWidgetDemo extends StatefulWidget {
  const StateWidgetDemo({super.key});

  @override
  State<StateWidgetDemo> createState() => _StateWidgetDemoState();
}

class _StateWidgetDemoState extends State<StateWidgetDemo> {
  late int _num = 0;

  void _increment() {
    setState(() {
      _num++;
    });
  }

 void _decrement() {
    setState(() {
      _num--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.purple[50],
        height: double.infinity,
        width: double.infinity,
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          direction: Axis.vertical,
          children: [
            Center(
              child: Text(
                '$_num',
                style: const TextStyle(color: Colors.purple, fontSize: 50),
              ),
            ),
            ElevatedButton.icon(
              onPressed: _increment,
              icon: const Icon(Icons.add),
              label: const Text('CLick me'),
            ),
            ElevatedButton(
              onPressed: _decrement,
              child: const Text('CLick me - '),
            )
          ],
        ));
  }
}
