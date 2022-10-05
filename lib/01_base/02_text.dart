import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text('文本组建'),
          actions: const [Icon(Icons.settings)],
        ),
        body: const TextDemo());
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Ні над кім не павінны ўчыняцца самавольнае ўмяшанне ў яго асабістае і сямейнае жыццё, самавольны замах на недатыкальнасць яго жылля, тайну яго карэспандэнцыі або на яго гонар і рэпутацыю. Кожны чалавек мае права на абарону закону ад такога ўмяшання або такіх замахаў. Кожны чалавек мае права на свабоду думкі, сумлення і рэлігіі; гэта права ўключае свабоду мяняць сваю рэлігію або пераканні і свабоду спавядаць сваю рэлігію або перакананні як аднаасобна, так і разам з іншымі, публічным або прыватным парадкам у вучэнні, богаслужэнні і выкананні рэлігійных і рытуальных абрадаў.',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightBlue,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.redAccent,
            decorationThickness: 2.0,
          ),
          textAlign: TextAlign.left,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 0.8,
        ),
        RichText(
          text: const TextSpan(
              text: 'Hello',
              style: TextStyle(color: Colors.green, fontSize: 24, fontFamily: 'FiraCode'),
              children: [
                TextSpan(
                  text: 'Dart',
                  style: TextStyle(fontSize: 20, color: Colors.redAccent),
                ),
                TextSpan(
                  text: '你好世界',
                  style: TextStyle(fontSize: 20, color: Colors.purpleAccent),
                )
              ]),
        )
      ],
    );
  }
}
