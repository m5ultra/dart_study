void main() {
  const str01 = 'Hello world';
  print('单引号： $str01');

  String str02 = "你好, 世界";
  print(str02);

  // 通过三个引号声明字符串
  String str03 = """Hello,
  World
  """;
  print('str03: $str03');

  const str04 = '''你好,
  世界''';
  print(str04);


  print(str01 + str02);
  print('$str01, $str02');

  print(str01.split(' '));

  print('   abc   '.trim());


  // 判断字符串是否为空
 print(''.isEmpty); // true
 print('a'.isNotEmpty); // true

 // 字符串替换
 print(str01.replaceAll('world', 'Dart'));

 print('h1k2d3n4n5n'.replaceAll(RegExp(r'\d+'), '_'));

 // 通过正则匹配手机号
 const s = r'^1\d{10}$';
 RegExp isPhone = RegExp(s);
 print(isPhone.hasMatch('122333344444'));

 // 查找字符串
  print(str01.contains('e'));

  // 定位字符串
  print(str01.indexOf('e'));
}
