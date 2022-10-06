import 'package:flutter/material.dart';
// import '01_base/01_Hello.dart';
// import '01_base/02_text.dart';
// import '02_layout/01_container.dart';
// import '02_layout/02_Column_Row.dart';
// import '02_layout/03_flex.dart';
// import '02_layout/04_wrap.dart';
// import '02_layout/05_stack.dart';
// import '02_layout/06_card.dart';
// import '03_btns/01_buttons.dart';
import '04_imgs/01_images.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // 常量构造函数

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
