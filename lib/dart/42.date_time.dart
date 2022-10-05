import 'dart:core'; // 默认自动引入

void main() {
  // 创建当前时间
  var now = DateTime.now();
  print(now);

  // 通过普通构造函数创建时间
  var d = DateTime(2022, 10, 05, 13, 18, 55);
  print(d);

  // 创建标准时间
  var d1 = DateTime.parse('2022-10-05 13:22:55');
  print(d1);
  var d2 = DateTime.parse('2022-10-05 13:22:55+0800');
  print(d2);

  // 时间增量
  print(now.add(const Duration(hours: 2)));
  print(now.add(const Duration(hours: -3)));

  // 时间比较
  print(d1.isAfter(d2));
  print(d1.isBefore(d2));
  print(d1.isAtSameMomentAs(d2));

  // s时间差
  var d3 = DateTime.parse('2022-10-01');
  var d4 = DateTime.parse('2022-10-05');
  var differences = d3.difference(d4);
  print([differences.inDays, differences.inHours]);

  // 时间戳
  print(now.millisecondsSinceEpoch); // 毫秒 13 位时间戳
  print(now.microsecondsSinceEpoch); // 微秒 16 位时间戳

  // 格式化
  print(now.hour.toString().padLeft(2, '0'));

  print(
      '${now.year.toString()}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')} ${now.year.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}');
}
