//Constructor and Superclass
class Television {
  String name;
  int color;
  Television({required this.name, required this.color});

  void turnOn() {
    print('turn on');
  }

  int get colorno => color;
  set colorno(int newColor) => color = newColor;
}

class SmartTelevision extends Television {
  // 상속받은 클래스의 생성자를 호출하려면 super()를 사용한다.
  // 두가지 방법이 있으며, 아래와 같이 사용할 수 있다.
  // 위의 방법이 권장된다고 한다.
  SmartTelevision({required super.name, required super.color});
  //SmartTelevision({required String name, required int color}) : super(name: name, color: color);

  @override
  void turnOn() {
    super.turnOn();
    print('smart turn on');
  }

  int get colorno => super.colorno;
  set colorno(int newColor) => super.colorno = super.colorno * newColor;
}

void main(List<String> args) {
  final tv = Television(name: 'Samsoong Tv', color: 100);
  print(tv.colorno);
  tv.colorno = 80000000000000;
  print(tv.colorno);
  print('-------------------');

  final st = SmartTelevision(name: 'Samsoong Tv', color: 100);
  print(st.colorno);
  st.colorno = 200;
  print(st.colorno);
}
