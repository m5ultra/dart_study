/// 01.默认构造函数 在类被实例化的时候第一个被调用
// class Point {
//   Point() {
//     print('我是默认构造函数， 实例化时第一个被调用');
//   }
// }
//
// void main() {
//   Point o = Point();
// }

/// 02.类的属性的声明 属性不赋初值 需要 加late 声明多个类型用"," 分割
// class Point {
//   late num x;
//   late num y;
//   // late num x, y;
//   // num a = 0, b = 2;
//   Point() {
//     print('我是默认构造函数， 实例化时第一个被调用');
//     this.x = 0;
//     this.y = 0;
//   }
// }
//
// void main() {
//   Point o = Point();
// }

/// 03. 省略 this 关键字

// class Point {
//   late num x;
//   late num y;
//
//   Point() {
//     print('我是默认构造函数， 实例化时第一个被调用');
//     x = 0;
//     y = 0;
//   }
// }
//
// void main() {
//   Point o = Point();
// }

/// 04. 给构造函数传递参数

// class Point {
//   late num x;
//   late num y;
//    // 这种情况 不能省略this 关键字
//   Point(num x, num y) {
//     print('我是默认构造函数， 实例化时第一个被调用');
//     this.x = x;
//     this.y = y;
//   }
// }
//
// void main() {
//   Point o = Point(3, 6);
//   print(o.x);
//   print(o.y);
// }


/// 05. 默认构造函数被调用的时候赋值

// class Point {
//   late num x;
//   late num y;
//   Point(this.x, this.y) {
//     print('我是默认构造函数， 实例化时第一个被调用');
//   }
// }
//
// void main() {
//   Point o = Point(3, 6);
//   print(o.x);
//   print(o.y);
// }


/// 06. 省略构造函数 函数体

class Point {
  late num x;
  late num y;
  Point(this.x, this.y);
}

void main() {
  Point o = Point(3, 6);
  print(o.x);
  print(o.y);
}
