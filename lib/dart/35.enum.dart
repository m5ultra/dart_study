enum Color { red, green, blue }

void main() {
  print(Color.green.index); // 通过index 获取具体的枚举值
  print(Color.values);
  List<Color> colors = Color.values;
  print(colors);
  // 通过下标访问具体的值
  print(colors[1]);

  // 通过forEach便利列表的内容
  colors.forEach((element) {
    print('values: $element, index: ${element.index}, name: ${element.name}');
  });
}
