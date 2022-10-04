class Person {
  late String name;
  Person(this.name);
  num _money = 100;
}

// 声明私有的属性以下划线开头 如果 类 和 main 函数在同一个上下问 main 函数中可以访问私有属性
void main(List<String> args) {
  Person o1 = Person('张三');
  print(o1);

  // 访问私有属性
  print(o1._money);
}
