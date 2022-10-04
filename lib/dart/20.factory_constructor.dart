// 单例模式
class Person {
  late String name;
  static dynamic instance;

  // 工厂构造函数 不能被实例化
  factory Person([String name = '刘备']) {
    // 工厂构造函数不能使用this
    // print(this.name);
    Person.instance ??= Person._newSelf(name);
    // 如果不是第一次实例化
    return Person.instance;
  }

  Person._newSelf(this.name);
}

void main() {
  Person o1 = Person('关羽');
  print(o1.name);

  Person o2 = Person('关羽');
  print(o2.name);

  print(o1 == o2);
}
