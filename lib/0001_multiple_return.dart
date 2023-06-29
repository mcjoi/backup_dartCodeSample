void main() {
  print('${multipleReturn().$1} // ${multipleReturn().$2}');
  print(
    '${multipleReturnWithNamedVariable().age} // ${multipleReturnWithNamedVariable().name}',
  );
}

(int, String) multipleReturn() {
  const a = 1;
  const b = "Hello";
  return (a, b);
}

({int age, String name}) multipleReturnWithNamedVariable() {
  const age = 132;
  const name = "Bong";
  return (age: age, name: name);
}
