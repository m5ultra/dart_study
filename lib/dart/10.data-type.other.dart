void main() {
  String str = '😀';
  print(str);
  print(str.length); // UTF-16
  print(str.runes.length); // UTF-32 表示的字符

  // Runes 可以将 UTF-32 字符集表示的内容转成符号
  Runes input = Runes('\u{1f680}');
  print(String.fromCharCodes(input));

  // Symbol 声明

  Symbol s = #abc;
  print(s);
  Symbol b = const Symbol('abc');
  print(b);
  print(#abc == const Symbol('abc'));

  dynamic foo = 'boo';
  print(foo);
  foo = 3;
  print(foo);
}
