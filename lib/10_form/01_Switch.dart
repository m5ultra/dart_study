import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool isOpenSwitch = true;

  handleSwitchChange(v) {
    setState(() {
      isOpenSwitch = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(toolbarHeight: 0.0),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(value: isOpenSwitch, onChanged: handleSwitchChange),
              CupertinoSwitch(
                value: isOpenSwitch,
                onChanged: handleSwitchChange,
                activeColor: Colors.blue,
                trackColor: Colors.white10,
                thumbColor: Colors.amber,
                dragStartBehavior: DragStartBehavior.down,
              )
            ],
          ),
        ));
  }
}
