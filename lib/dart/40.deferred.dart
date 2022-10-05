import 'lib/functions.dart' deferred as func; // 这种引入方法 只是建立了 引入库 与 当前文件的关联关系 库中内容并没有实际引入


Future greet() async {
  await func.loadLibrary();
  func.hello();
}

void main () {
  // func.hello(); //Deferred library func was not loaded.
  print(1);
  print(2);
  greet(); // 异步执行
  print(3);
}
