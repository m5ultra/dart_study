class Point {
  late num x, y;
  Point(this.x, this.y);

  // 命名构造函数
  Point.setDefaultVal() {
    x = 0;
    y = 0;
  }

  // 命名构造函数
  Point.formJson({this.x = 0, this.y = 0});
}

void main() {
  Point o = Point.setDefaultVal();
  print(o.x);
  print(o.y);
  Point o2 = Point.formJson(x: 3, y: 6);
  print(o2.x);
  print(o2.y);
}
