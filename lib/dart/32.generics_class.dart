class CommonClass {
  // Set s = <int>Set();
  Set s = <int>{};

  void add(int value) {
    s.add(value);
  }

  void info() {
    print('s => : $s');
  }
}

// 声明一个泛型类
class GenericsClass<T> {
  Set s = <T>{};

  void add(T value) {
    s.add(value);
  }

  void info() {
    print('s => : $s');
  }
}

void main() {
  CommonClass c = CommonClass();
  c.add(1);
  // c.add('2'); // The argument type 'String' can't be assigned to the parameter type 'int'
  c.add(2);
  c.info();

  GenericsClass gc = GenericsClass<int>();
  gc.add(1);
  // gc.add('2');
  gc.info();

  GenericsClass gc02 = GenericsClass<String>();
  // gc02.add(1);
  gc02.add('2');

  // Set s = <int>Set();
  // 内置类的泛型的写法 字面量形式的泛型
  Set s = <int>{};
  s.add(1);
  // s.add('hello');
  print(s);
}
