import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String name;
  late String password;
  late String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 0.0,
        toolbarHeight: 0.0,
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.blue[50],
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    labelText: '手机号',
                    hintText: '请输入手机号',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.redAccent),
                    prefixIcon: Icon(Icons.mobile_screen_share_rounded)),
                maxLength: 11,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '-',
                decoration: const InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    prefixIcon: Icon(Icons.code_outlined)),
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
              ),
              TextField(
                maxLines: 5,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: '请介绍一下自己',
                  prefixIcon: Icon(Icons.person),
                  // 获取焦点边框样式
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  // 默认边框样式
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                  ),
                  suffixIcon: Icon(Icons.clear)
                ),
                onChanged: (value) {
                  setState(() {
                    description = value;
                  });
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    print('$description $name $password');
                  },
                  child: const Text('Click me')),)
            ],
          )),
    );
  }
}
