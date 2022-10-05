import 'package:flutter/material.dart';
// import '01_base/01_Hello.dart';
import '01_base/02_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 常量构造函数

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        fontFamily: 'FiraCode',
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

