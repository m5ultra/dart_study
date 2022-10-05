import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 常量构造函数

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello, Flutter',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
