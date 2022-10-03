// 全局变量
int globalNum = 1000;

void main() {
  printInfo(); // localeNum 9
  printInfo(); // localeNum 9
  printInfo(); // localeNum 9

  var  o = out();
  o();
  o();
  o();
}

printInfo() {
  // 局部变量
  int localeNum = 10;
  localeNum--;
  print(localeNum);
  print(globalNum); // 可以在函数作用域中访问全局变量
}


// 闭包
out() {
  num money = 1000;
  return () {
    money -= 100;
    print(money);
  };
}
