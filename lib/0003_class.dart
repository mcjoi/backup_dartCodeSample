class Rectangle {
  double left, top, width, height;
  Rectangle(
      {required this.left,
      required this.top,
      required this.width,
      required this.height});

  // Define two calculated properties: right and bottom.
  double get right => left + width;
  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;
}

void main() {
  final rect = Rectangle(left: 3, top: 4, width: 5, height: 15);
  assert(rect.left == 3);
  print('${rect.left}, ${rect.top}, ${rect.right}, ${rect.bottom}');

  rect.right = 12;
  print('${rect.left}, ${rect.top}, ${rect.right}, ${rect.bottom}');
}
