void main() {
  // 地板除
  print(7 ~/ 4); // 1.75向下取整 得到结果是1

  // 类型判断运算符
  List list = [];
  if (list is List) {
    print('list is List');
  } else {
    print('list is not List');
  }

  if (list is! List) {
    print('不是列表');
  } else {
    print('是列表');
  }

  // 避空运算符
  print(1 ?? 3); // 1
  print(null ?? 12); // 12

  dynamic a;
  print(a ?? 0);

  dynamic b;
  b = 7;
  print(b ?? 0);

  var num;
  // if (num == null) {
  //   a = 3;
  // }
  num ??= 3;
  print(num);

  num ??= 6;
  print(num);

  // 可选链 条件属性运算符 保护可能为空的属性
  Map m = {};
  print(m.length);

  var obj;
  print(obj?.length); // null

  // 级联运算符

  Set s = {};
  s.add(1);
  s.add(2);
  s.add(3);
  s.remove(2);

  s
    ..add(4)
    ..add(5)
    ..add(6)
    ..remove(5);
  print(s);
}
