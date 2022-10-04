class ImmutablePoint {
  // 01. 属性必须被final声明
  final num x, y;

  // 02. 常量构造函数必须通过 const 声明
  const ImmutablePoint(this.x, this.y);

  // 03. 常量构造函数不能有函数体
}

void main() {
  Point o1 = Point(3, 9);
  Point o2 = Point(3, 9);
  print(o1 == o2); // false

  // 04.常量构造函数可以当作普通构造函数使用
  ImmutablePoint o3 = ImmutablePoint(1, 2);
  ImmutablePoint o4 = ImmutablePoint(1, 2);
  print(o3 == o4); // false

  // 05. 声明不可变对象 必须通过 const 关键字
  ImmutablePoint o5 = const ImmutablePoint(1, 2);
  ImmutablePoint o6 = const ImmutablePoint(1, 2);
  print(o5 == o6); // true

  // 04. Dart 通过 构造函数初始化对象的时 new 关键字可以省略
  ImmutablePoint o7 = new ImmutablePoint(1, 2);
  ImmutablePoint o8 = new ImmutablePoint(1, 2);
  print(o7 == o8); // false
}

class Point {
  late num x, y;
  Point(this.x, this.y);
}
