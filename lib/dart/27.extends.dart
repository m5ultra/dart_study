import 'lib/27.Father.dart';
import 'lib/27.Son.dart';

void main() {
  Father f = Father();
  print(f.name);
  Son s = Son();
  print(s.name);
  // print(s._monkey); // 子类的实例无法访问父类的私有属性 和 私有方法
  s.say();
}
