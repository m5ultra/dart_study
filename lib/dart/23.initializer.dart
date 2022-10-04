/// case 01. 参数必须传
// class Rect {
//   late int height, width;
//   Rect(this.height, this.width);
// }
//
// void main() {
//   /// 2 positional argument(s) expected, but 0 found.
//   Rect o = Rect();
// }

/// case 02. 可选参数设置默认值
// class Rect {
//   late int height, width;
//   Rect([this.height = 2, this.width = 3]);
// }
//
// void main() {
//   Rect o = Rect();
//   print('${o.width}');
//   print('${o.height}');
//
//   Rect o2 = Rect(10, 20);
//   print('${o2.width}');
//   print('${o2.height}');
// }

// case 03.命名参数设置默认值
// class Rect {
//   late int height, width;
//   Rect({this.height = 2, this.width = 3});
// }
//
// void main() {
//   Rect o = Rect();
//   print('${o.width}');
//   print('${o.height}');
//   Rect o2 = Rect(height: 10, width: 20);
//   print('${o2.width}');
//   print('${o2.height}');
// }

// case 04. 初始化参数列表
// class Rect {
//   late int height, width;
//   Rect()
//       : height = 3,
//         width = 6 {
//     print('$height, $width');
//   }
// }
//
// void main() {
//   Rect o = Rect();
//   print('${o.width}');
//   print('${o.height}');
// }

/// case 05
//  重定向构造函数
class Point {
  late double x, y, z;
  Point(this.x, this.y, this.z);
  // 初始化构造函数的特殊用法 重定向构造函数 this 就是 默认构造函数
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  Point o = Point(1, 2, 3);
  print('${o.x}');
  print('${o.y}');
  print('${o.z}');
  Point o2 = Point.twoD(4, 5);
  print('${o2.z}'); // 0.0
}
