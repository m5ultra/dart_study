class Point {
  late num x, y;
  Point(this.x, this.y){
    print('默认构造函数');
  }

  // 命名构造函数
  Point.origin() {
    print('Origin');
    x = 0;
    y = 0;
  }

  // 命名构造函数
  Point.formJson({this.x = 0, this.y = 0}) {
    print('formJson');
  }
}

void main() {
  Point o = Point.origin();
  print(o.x);
  print(o.y);
  Point o2 = Point.formJson(x: 3, y: 6);
  print(o2.x);
  print(o2.y);
}
