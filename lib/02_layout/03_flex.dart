import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flex'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: const FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {
  const FlexDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Colors.green,
              height: 50,
              width: 50,
            ),
            Expanded(
              child: Container(color: Colors.red, height: 50),
            ),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          textDirection: TextDirection.rtl,
          children: const [
            Icon(
              Icons.access_alarm,
              size: 50,
            ),
            Icon(Icons.add, size: 50),
            Icon(Icons.safety_check, size: 50),
            Icon(Icons.menu, size: 50),
          ],
        ),
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.yellow,
                height: 50,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
                height: 50,
              ),
            )
          ],
        ),
        Container(
          height: 100,
          margin: const EdgeInsets.all(20),
          child: Flex(
            direction: Axis.vertical,
            verticalDirection: VerticalDirection.up,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                  height: 50,
                ),
              ),
              const Spacer(flex: 1), // 空格占位器
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.purple,
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
