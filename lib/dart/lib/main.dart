library phone;
import 'dart:math';
// 与分库建立联系
part 'main_camera.dart';
part 'main_processor.dart';

void hello() {
  print('hello, world');
}


void main() { // 主库实现自己逻辑
  Camera c = Camera();
  c.info();
  print(c.name);

  Processor p = Processor();
  p.info();
  print(p.name);

  print(pi);
}
