String getData(String v) {
  return v;
}

T getData02<T>(T v) {
  return v;
}

getData03<T>(T v) {
  return v;
}

void main() {
  print(getData('getData'));
  // print(getData(1)); // The argument type 'int' can't be assigned to the parameter type 'String'
  print(getData02<String>('get data 2'));
  print(getData02<int>(1));
}
