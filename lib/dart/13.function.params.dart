void main() {
 getUserInfo('Dart');
 print(getUserInfo01('Deni', 22));
 print(getUserInfo02('少年张无忌', age: 16));

 List list = ['橘子', '苹果', '葡萄'];

 // 函数参数
 list.forEach(myPrint);
}

// 必填参数
String getUserInfo(String name) {
  print('$name');
  return '你好： $name';
}

// 可选参数 age 为可选参数

String getUserInfo01(String name, [int age = 18]) {
  return '你好： $name, $age';
}

// 命名参数 和 可选参数 不可同时使用

String getUserInfo02(String name,   {int age = 88}) {
  return '你好： $name, $age';
}

// 删除参数

var myPrint = (val) {
  print('=>: $val');
};

