void main() {
  List list = [1, 2, 3];

  // for
  for (int i = 0; i < list.length; i++) {
    print('$i');
  }

  // fro ... in

  for (dynamic item in list) {
    print(item);
  }
// forEach
  list.forEach((element) {
    print(element);
  });

  // map()
  List newList = list.map((e) {
    return e * e;
  }).toList();
  print(newList);

  // where 返回条件是奇数的元素

  // 判断数字是否是奇数

  bool isOdd(n) => n % 2 == 1;

  List oddList = list.where((element) => isOdd(element)).toList();
  print(oddList);
  print('List: $list');

  // any 检查是否有 至少有一个

 bool isExistOdd =  list.any(isOdd);

 print(isExistOdd);

 // every 来判断是否全部都是奇数
  bool isAllOdd = list.every(isOdd);
  print(isAllOdd);

  // 扩展
  List pairs = [[1, 2], [3, 4]];
  List flattened = pairs.expand((element) => element).toList();
  print(flattened);

  // 折叠

  // 对列表中每个元素 做一个累计操作
  num result = list.fold(2, (previousValue, element) => previousValue * element);

  print(result);
}
