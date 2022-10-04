class Circle {
  final double PI = 3.1415926;
  late num r;
  Circle(this.r);
  num area() {
    return PI * r * r;
  }

  // 使用 get 修改的方法 不能有小括号
  get area02 {
    return PI * r * r;
  }

  set setR(newR) {
    r = newR;
  }
}

void main() {
  Circle c = Circle(10);
  print(c.area());

  print(c.area02);
  c.setR = 20;
  print(c.area02);
}
