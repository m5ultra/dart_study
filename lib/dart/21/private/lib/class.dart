class Person {
  late String name;
  Person(this.name);
  // 私有属性 _ 开头
  final num _money = 100;

  num getMoney() {
    return _money;
  }

  // 声明私有方法
  _wife() {
    print('我是 $name 的老婆');
  }
}
