import 'lib/main.dart';

void main() {
  Camera c = Camera();
  c.info();
  print(c.name);

  Processor p = Processor();
  p.info();
  print(p.name);

  hello();
}
