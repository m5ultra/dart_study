import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dio'),
      ),
      body: const DioDemo(),
    );
  }
}

class DioDemo extends StatelessWidget {
  const DioDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('发送请求'),
        onPressed: () async {
          // 发送请求
          /// More examples see https://github.com/flutterchina/dio/tree/master/example
          var dio = Dio();
          final response = await dio.get('https://httpbin.org/ip',
              options: Options(sendTimeout: 50000, receiveTimeout: 50000));
          print('${response.data} 请求响应数据');
        },
      ),
    );
  }
}
