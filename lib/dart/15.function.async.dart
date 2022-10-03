import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

void main() async {
  // http://httpbin.org/ip 返回本机电脑ip
  getIp().then((ip) => print('ip => : $ip'));

  // async 写法
  Response result = await getIpAsync();
  print(result.statusCode);
  if (result.statusCode == 200) {
    print(jsonDecode(result.body));
  }
}

Future getIp() {
  Uri url = Uri.https('httpbin.org', '/ip');

  return http.get(url).then((res) {
    String ip = jsonDecode(res.body)['origin'];
    return ip;
  });
}

//异步方法
Future getIpAsync() async {
  Uri url = Uri.https('httpbin.org', '/ip');

  return await http.get(url);
}
