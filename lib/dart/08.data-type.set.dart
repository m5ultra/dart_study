void main() {
  // 字面量
  Set nums = <int>{1, 2, 3};
  print(nums);

  // 通过构造函数声明的集合
  Set fruits = new Set();
  fruits.add('苹果');
  fruits.add('香蕉');
  fruits.add('橘子');

  print(fruits);
  print(fruits.toList());

  List nums02 = [1, 2, 3, 3];
  print(nums02.toSet()); // 会去掉重复元素

  // 集合特有的操作
  Set caocao = {};
  caocao.addAll(['张辽', '司马懿', '关羽']);

  Set liubei = {};
  liubei.addAll(['关羽', '张飞', '赵云']);

  // 求交集
  print(caocao.intersection(liubei));
  print(caocao.union(liubei));
  print(caocao.difference(liubei));

  // 返回第一元素
  print(caocao.first);
  print(caocao.last);

  // 集合不能通过下标取值
}
