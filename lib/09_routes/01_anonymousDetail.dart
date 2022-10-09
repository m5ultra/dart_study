import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detail extends StatelessWidget {
  final String title;

  const Detail({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('详情页面'),
        leading: const Icon(Icons.menu),
        actions: const [Icon(Icons.settings)],
        elevation: 0,
      ),
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Store(title: title)),
        ],
        child: const DetailPage(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        backgroundColor: Colors.green,
        elevation: 0.0,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

// 可以把页面接收的数据放到Store中 传递给下面的组建
class Store with ChangeNotifier {
  late final String _title;

  Store({required String title}) : _title = title;

  String get title {
    return _title;
  }
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(Provider.of<Store>(context, listen: false).title),
          Text(context.watch<Store>().title),
          CloseButton(onPressed: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}
