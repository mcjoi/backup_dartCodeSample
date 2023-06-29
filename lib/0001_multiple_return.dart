void main() {
  print('${multipleReturn().$1} // ${multipleReturn().$2}');
  print(
      '${multipleReturnWithNamedVariable().age} // ${multipleReturnWithNamedVariable().name}');
}

(int, String) multipleReturn() {
  int a = 1;
  String b = "Hello";
  return (a, b);
}

({int age, String name}) multipleReturnWithNamedVariable() {
  int age = 132;
  String name = "Bong";
  return (age: age, name: name);
}
