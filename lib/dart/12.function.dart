void main() {
  printInfo('world');
  print(getNum());

  List list = ['苹果', '香蕉', '猕猴桃'];
  list.forEach(getResult);

  // 箭头函数 箭头 函数不能写分号， 只能有一行语句
  list.forEach((element) => print('=>: $element'));

  // IIFE 立即执行函数 自执行函数
  ((int a) {
    print(a);
  })(13);
}

// 函数声明
void printInfo(String str) {
  print('hello, $str');
}

// 函数的返回值 int ： 返回值需要与声明的返回值int一致
int getNum() {
  return 10;
}

// 匿名函数的的应用
var getResult = (val) {
  print(val);
};
