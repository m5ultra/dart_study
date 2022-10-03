import 'package:flutter/foundation.dart';

void main() {
  var age = 18;
  if (kDebugMode) {
    print(age);
  }

  String name = '邓紫棋';

  if(kDebugMode) {
    print(name);
  }

  // name = 20; //  value of type 'int' can't be assigned to a variable of type 'String'.

  dynamic name02 = '刘德华';
  name02 = 90;

  var defaultName;
  print(defaultName);

  var Age = 88;
  print('Age： $Age');

  const c = 01;
  // c = 02; // Constant variables can't be assigned a value.

  final c2 = 2;
  print(c2);
}
