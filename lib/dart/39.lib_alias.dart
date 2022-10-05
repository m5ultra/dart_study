import 'lib/custom.dart';
import 'lib/functions.dart' as functions; // 给库增加前缀 解决命名冲突的问题

void main () {
f1();
functions.f1(); // 调用functions.f1();
}
