// 声明一个类
class Animal {
  // 类的属性
  String name = 'kity';

  // 类得到方法
  getName() {
    print('Animal => : $name');
  }
}
void main() {
  // cat是类的实例
 Animal cat =  Animal();

 // 访问累的属性
 print(cat.name);
 // 访问类的方法
 print(cat.getName());

 // Dart 中所有的内容都是对象
 Map m = Map();
 print(m.length);
 m.addAll({'name': '尼古拉斯 - 赵四', 'age': 88});
 print(m.length);
}
