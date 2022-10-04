import '27.Father.dart';

class Son extends Father {
  // 初始化列表 把子类的job传递给父类
  // 通过super 继承父类的构造函数
  Son([String job = '蜀国皇帝']) : super(job);
  // 继承命名构造函数
  // Son(String job) : super.origin(job);
  Son.origin(String job) : super.origin(job);
  @override
  String name = '刘禅';
  @override
  say() {
    super.say(); // super 代表父类
    print('这是刘禅, 我爹是 ${super.name}, 他的工作是 ${super.job}');
  }
}
