import '27.Father.dart';

class Son extends Father {
  @override
  String name = '刘禅';
  @override
  say() {
    super.say(); // super 代表父类
    print('这是刘禅, 我爹是 ${super.name}');
  }
}
