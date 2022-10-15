import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar配置可以不要 如果不需要使用
      appBar: AppBar(
        toolbarHeight: 0,
        title: const Text('123', style: TextStyle(color: Colors.redAccent),),
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.0),
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.0),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 15), child: Icon(
            Icons.settings,
          ),)
        ],
      ),
      body: buildBody(),
    );
  }
}

Widget buildBody() {
  return SizedBox(
    height: 80,
    width: double.infinity,
    // child: Card(
    //   clipBehavior: Clip.antiAlias,
    //   margin: const EdgeInsets.all(0),
    //   // shape: const RoundedRectangleBorder(
    //   //   borderRadius: BorderRadius.only(
    //   //       bottomLeft: Radius.circular(40),
    //   //       bottomRight: Radius.circular(40)),
    //   // ),
    //   child: Image.asset(
    //     'images/001.jpg',
    //     fit: BoxFit.cover,
    //   ),
    // ),
    child: Image.asset(
      'images/001.jpg',
      fit: BoxFit.cover,
    ),
  );
}
