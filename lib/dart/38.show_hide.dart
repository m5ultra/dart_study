// import 'lib/custom.dart';  // 引入全部
// import 'lib/custom.dart' show f1, f2;  // show后面指定包含引入的内容 f1 和 f2;
import 'lib/custom.dart' hide f3; // hide指定排除引入的内容 排除f3 引入f1 和 f2;

void main() {
  f1();
  f2();
  // f3(); // 未引入
}
