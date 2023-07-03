// Abstract methods for implementation!!!!!!

abstract class Animal {
  void breathe();
  void walk();
  void makeNoise() {
    print('Making animal noises!');
  }
}

// use implement keyword implementation
class Person implements Animal {
  @override
  void breathe() {
    print('Breathing through nostrils!');
  }

  @override
  void makeNoise() {
    print('Making human noises!');
  }

  @override
  void walk() {
    // TODO: implement walk
    print('walk properly');
  }
}

void main() {
  final person = Person();
  person.breathe();
  person.makeNoise();
  person.walk();
}
