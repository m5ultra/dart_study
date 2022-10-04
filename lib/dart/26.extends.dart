class Father {
  String name = '刘备';
  num monkey = 10000;
  say() {
    print('我是 $name ');
  }
}

class Son extends Father {
  @override
  say() {
    print('这是刘禅');
  }
}

void main() {
  Father f = Father();
  print(f.name);
  Son s = Son();
  print(s.name);
  print(s.monkey);
  s.say();
}
