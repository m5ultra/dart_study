// 创建混入

// 01.使用类声明混入

class Father {}

// class MixinA extends Father{ 用作混入的类 不能继承除了 Object 以外的其他类

// class MixinA extends Object {

class MixinA {
  String name = 'MixinA';

  void printA() {
    print('A');
  }

  void run() {
    print('a is running');
  }
  // MixinA(); // 用作混入的类 不能声明构造函数
}

// 02.使用 mixin 关键字声明混入
mixin MixinB {
  String name = 'MixinB';

  void printB() {
    print('B');
  }

  void run() {
    print('b is running');
  }
}

class MyClass with MixinA, MixinB {}

void main() {
  MyClass c = MyClass();
  c.printA();
  c.printB();
// 后引入的混入, 会覆盖前面引入的混入中的重复的内容
  print(c.name);
  c.run();
}
