class SomeBaseClass {}

class Foo<T extends SomeBaseClass> {
  @override
  String toString() => 'Instance of "Foo<$T>"';
}

class AnotherClass {}

class Extender extends SomeBaseClass {}

void main() {
  var someBaseClass = Foo<SomeBaseClass>();
  print(someBaseClass);

  // var f = Foo<AnotherClass>(); // 类型不对
  // print(f);

  var extenderFoo = Foo<Extender>();
  print(extenderFoo);

  var foo = Foo();
  print(foo);
}
