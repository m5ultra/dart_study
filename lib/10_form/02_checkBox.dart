import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool isMale = false;
  late bool isFemale = false;
  late bool transgender = true;
  late bool _value = false;
  late bool _value2 = false;
  void handleChecked(bool? bool) {
    setState(() {
      isMale = bool!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 0.0,
        ),
         body: Column(
          children: [
            ListTile(
              leading: Checkbox(value: isMale, onChanged: handleChecked),
              title: const Text('男'),
            ),
            ListTile(
              leading: Checkbox(
                value: isFemale,
                onChanged: (v) {
                  setState(() {
                    isFemale = v!;
                  });
                },
              ),
              title: const Text('女'),
            ),
            ListTile(
              leading: Checkbox(
                value: transgender,
                activeColor: Colors.pinkAccent,
                checkColor: Colors.amber,
                onChanged: (v) {
                  setState(() {
                    transgender = v!;
                  });
                },
              ),
              title: const Text('變性人'),
            ),
            CheckboxListTile(
              value: _value,
              onChanged: (v) {
                setState(() {
                  _value = v!;
                });
              },
              title: const Text('1:00 叫我起床'),
              subtitle: const Text('太睏了起不來'),
              secondary: const Icon(Icons.alarm, size: 40,),
            ),
            CheckboxListTile(
              value: _value2,
              onChanged: (v) {
                setState(() {
                  _value2 = v!;
                });
              },
              title: const Text('2:00 叫我起床'),
              subtitle: const Text('這還差不多'),
              secondary: const Icon(Icons.alarm, size: 40,),
              selected: _value2,
              activeColor: Colors.greenAccent,
              checkColor: Colors.pink,
            )
          ],
        ));
  }
}
