class Father {
  String name = '刘备';
  final num _money = 10000; // 私有属性只能在 当前类使用 子类 和 子类的实例都无法访问
  say() {
    print('我是 $name ');
  }

  get getMoney {
    return _money;
  }
}
