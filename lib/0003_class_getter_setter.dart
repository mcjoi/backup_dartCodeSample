// constructor : 생성자. 클래스 생성시, arguments를 포함하면, 해당 arguments를 받아서 클래스의 멤버 변수를 초기화한다.
// 즉, 그냥 변수를 선언하는 것과 동일한데, 값을 클래스 선언할 때마다 받아올 수 있다.

// getter : 생성자이든, 클래스 안에서 선언된 변수든 클래스 외부에서 접근할 수 있도록 해준다.

// ignore_for_file: unreachable_from_main

class MemeberVariableTest {
  int intVal;
  // MemeberVariableTest({required int intVal}) : _intVal = intVal;
  MemeberVariableTest({required this.intVal});

  //getter로 신규 변수 생성, 기존 변수에 연산을 수행한 값을 반환
  int get intValOut => intVal + 5;
  //setter로 신규 변수 생성, 기존 변수에 연산을 수행한 값을 반환
  set intValOut(int newVal) {
    intVal = newVal;
  }
}

class Rectangle {
  int intValue;
  String stringValue;
  //Rectangle({required int intValue, required String stringValue}) : _stringValue = stringValue, _intValue = intValue;
  Rectangle({required this.intValue, required this.stringValue});

  int get intValueOut => intValue + 5;

  // setter
  set intValueOut(int newValue) {
    intValue = intValue + newValue;
  }

  String get stringValueOut => '$stringValue $stringValue';
  set stringValueOut(String newValue) {
    stringValue = stringValue + newValue;
  }
}

void main() {
  final t = MemeberVariableTest(intVal: 3);
  print(t.intVal);
  print(t.intValOut);
  print(t.intValOut = 5);
  print(t.intVal);
  print(t.intValOut);

  // /// 케이스 1
  // final rect = Rectangle(intValue: 3, stringValue: '4');
  // // 직접 클래스의 멤버 변수에 접근
  // print('${rect.intValue}, ${rect.stringValue}');
  // // getter를 통해 접근
  // print('${rect.intValueOut}, ${rect.stringValueOut}');

  // /// 케이스 2
  // rect.intValueOut = 5;
  // rect.stringValueOut = 'value has changed';
  // // 직접 클래스의 멤버 변수에 접근
  // print('${rect.intValue}, ${rect.stringValue}');
  // // getter를 통해 접근
  // print('${rect.intValueOut}, ${rect.stringValueOut}');
  // //setter
}
