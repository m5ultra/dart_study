void main() {
  // 声明List - 字面量 不限制元素类型
  List l1 = ['a', 'b', 'c', 1, 2, 3];
  print(l1);
  // 限制元素类型
  List l2 = <int>[1, 2, 3];
  print(l2);

  // 通过构造函数的类型
  List l3 = List.empty(growable: true);
  l3.add(1);
  print(l3);

  var l4 = List.filled(3, 6);
  print(l4);

  dynamic l5 = [0, ...l4];
  print(l5);

  var l6;
  var l7 = [7, ...?l6];
  print(l7);

  // 返回列表长度
  print(l1.length);
  print(l1.reversed); // (3, 2, 1, c, b, a)
  print(l1.reversed.toList()); // [3, 2, 1, c, b, a]
  print(l1);

  // 增加元素
  l3.addAll([4, 5, 6]);

  // 删除元素

  l3.removeAt(1);
  print('l3: $l3');

  l3.insert(1, 'a');

  print('l3: $l3');

  l3.clear(); // 清空

  print(l3.isNotEmpty);

  // 合并元素

  List words = ['hello', 'world'];
  String str = words.join('-');

  print(str);
}
