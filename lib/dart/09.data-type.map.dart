void main() {
  // 字面量
  Map m = {'name': '刘亦菲', 'age': 20};
  print(m);

  // 通过构造函数的方式来声明
  Map m2 = new Map();
  m2['name'] = 'LISI';
  m2['age'] = 60;
  print(m2);

  // 访问属性
  print(m['name']);
  print(m.containsKey('name')); // true
  print(m.containsKey('a')); // false

  // 赋值
  // 如果key不存在才赋值 如果key已经存在 则不赋值
  m.putIfAbsent('gender', () => '男');
  m.putIfAbsent('gender', () => '女');
  print(m);

  print(m.keys);
  print(m.values);
  print(m.entries.toList());

  // 删除 remove
  // 根据条件删除
  m.removeWhere((key, value) => key == 'gender');
  print(m);
}
