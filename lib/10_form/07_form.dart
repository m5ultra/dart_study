import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  late String _phone;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        // backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.amber[100],
          child: Column(
            children: [
              Form(
                key: globalKey,
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                          hintText: '手机号',
                        ),
                        validator: (String? v) {
                          RegExp reg = RegExp(r'^\d{11}$');
                          if (!reg.hasMatch(v!)) {
                            return '手机号非法';
                          }
                          return null;
                        },
                        onSaved: (v) {
                          print('onSaved');
                          _phone = v!;
                        }),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: '密码',
                        ),
                        validator: (String? v) {
                          RegExp reg = RegExp(r'^[a-zA-Z0-9_@]{6,18}$');
                          if (!reg.hasMatch(v!)) {
                            return '密码必须是数字、字母、_、@';
                          }
                          return null;
                        },
                        onSaved: (v) {
                          print('onSaved');
                          _password = v!;
                        }),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (globalKey.currentState!.validate()) {
                          print('验证成功');
                          print('globalKey.currentState.save Before');
                          globalKey.currentState!.save();
                          print('globalKey.currentState.save After');
                          print('$_password $_phone');
                        }
                      },
                      child: const Text('Click me'),
                    ),
                  ),
                  const SizedBox( width: 20, ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        globalKey.currentState!.reset();
                      },
                      child: const Text('Reset'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
