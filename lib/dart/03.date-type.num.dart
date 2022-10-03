void main() {
 int count = 3;
 print(count); // 3

 double num02 = 3; // 3.0

 num n = 3.7;

 //  类型转换
 print(n.toString());
 print(3.8.toInt()); //向下取整

 print(3.1415926.round());
 print(3.1415926.toStringAsFixed(4));

 print(10.remainder(4)); // 余数

 print(10.compareTo(12)); //数字比较： 0 相同 1 大于 -1 小于

 // 返回最大公约数
 print(12.gcd(18)); // 6

 // 科学计数法

 print(1000.toStringAsExponential(2));
}
