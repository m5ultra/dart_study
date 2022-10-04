// 创建混入

// 01.使用类声明混入
class MixinA {
  String name = 'MixinA';
  void printA() {
    print('A');
  }
}

// 02.使用 mixin 关键字声明混入
mixin MixinB {
  String name = 'MixinB';
  void printB() {
    print('B');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  MyClass c = MyClass();
  print(c.name);
  c.printA();
  c.printB();
}
