import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return ShardStateWidget(
      cusNum: num,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Inherited Widget'),
        ),
        body: const SafeArea(child: InheritedWidgetDemo()),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple[100],
          elevation: 0.0,
          onPressed: () {
            setState(() {
              num += 5;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class InheritedWidgetDemo extends StatefulWidget {
  const InheritedWidgetDemo({super.key});

  @override
  State<InheritedWidgetDemo> createState() => _InheritedWidgetDemoState();
}

class _InheritedWidgetDemoState extends State<InheritedWidgetDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[50],
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const UseStateWidget(),
          ElevatedButton(
            onPressed: () {
              setState(() {});
            },
            child: Text('CLick me ${ShardStateWidget.of(context).cusNum}'),
          )
        ],
      ),
    );
  }
}

class UseStateWidget extends StatefulWidget {
  const UseStateWidget({Key? key}) : super(key: key);

  @override
  State<UseStateWidget> createState() => _UseStateWidgetState();
}

class _UseStateWidgetState extends State<UseStateWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(ShardStateWidget.of(context).cusNum.toString());
  }
}

class ShardStateWidget extends InheritedWidget {
  final int cusNum;

  const ShardStateWidget(
      {Key? key, required Widget child, required this.cusNum})
      : super(key: key, child: child);

  static ShardStateWidget of(BuildContext context) {
    final ShardStateWidget? result =
        context.dependOnInheritedWidgetOfExactType<ShardStateWidget>();
    assert(result != null, 'No ShardStateWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ShardStateWidget oldWidget) {
    return true;
  }
}
