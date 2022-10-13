import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int gender = 0;
  late String checked = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 0.0,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('男'),
                Radio(
                  value: 1,
                  groupValue: gender,
                  onChanged: (v) {
                    setState(() {
                      gender = v!;
                    });
                  },
                ),
                const Text('女'),
                Radio(
                  value: 0,
                  groupValue: gender,
                  onChanged: (v) {
                    setState(() {
                      gender = v!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(gender == 1 ? '男' : '女'),
              ],
            ),
            RadioListTile(
              value: '001',
              groupValue: checked,
              onChanged: (v) {
                setState(() {
                  checked = v!;
                });
              },
              title: const Text('男性'),
              subtitle: const Text('有胡子'),
              secondary: const Icon(Icons.person),
              selectedTileColor: Colors.amber,
              selected: checked == '001',
            ),
            RadioListTile(
              value: '002',
              groupValue: checked,
              onChanged: (v) {
                setState(() {
                  checked = v!;
                });
              },
              title: const Text('女性'),
              subtitle: const Text('长头发'),
              secondary: const Icon(Icons.person),
              selectedTileColor: Colors.greenAccent,
              selected: checked == '002',
            ),
          ],
        ));
  }
}
