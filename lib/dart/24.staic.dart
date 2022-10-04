class Person {
  static String name = '张三';
  num age = 18;

  static void printInfo() {
    // print(this.name); //01. 不能通过 this 访问静态属性
    print(name); // 01.1 可以不用 this 直接访问
    // 03.静态方法 不能访问 非静态属性
    // print(this.age); // 报错
    // print(age); // 报错
    // printUser(); // 05.静态方法不能方法不能访问非静态方法
  }

  void printUser() {
    // print(this.name); // 01.2不能通过 this 访问静态属性
    print(name); // 正确
    // 08.非静态方法 可以访问静态属性 和 非静态属性
    print(this.age); // 正确
    print(age); // 正确
    printInfo(); // 06.非静态方法 可以 访问静态方法
  }
}

void main() {
  // 02.静态成员 可以通过类名称直接访问
  print(Person.name);
  Person.printInfo();
  // 07.不能通过类名称 直接访问非静态方法
  // Person.printUser();

  Person o1 = Person();
  // print(o1.name); // 04.不能通过实例化的方式访问静态属性 和 静态方法
}
