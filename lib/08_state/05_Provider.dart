import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // 02.创建Provider 注册数据模型
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LikesModel()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: const SafeArea(child: TestProvider()),
      ),
    );
  }
}


// 01.创建数据模型

class LikesModel with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 0;

  // int get counter => _count;

  int get count {
    return _count;
  }

  incrementCounter() {
    // 累加
    _count++;
    // 通知UI 更新
    notifyListeners();
  }

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}

class TestProvider extends StatelessWidget {
  const TestProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red[50],
      width: double.infinity,
      child: Column(children: [
        Text('${context.watch<LikesModel>().count}'),
        ElevatedButton(onPressed: () => Provider.of<LikesModel>(context, listen: false).incrementCounter(), child:  const Text('Click me'))
      ],),
    );
  }
}


