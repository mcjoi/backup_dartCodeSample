class Performer with Musical {
  String name;
  Performer(this.name);

  void canDance() {
    print('Dancing');
  }
}

mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing Piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Musician extends Performer with Musical {
  Musician(super.name);
}

class Maestro extends Performer with Musical {
  Maestro(super.name);

  @override
  void canDance() {
    print('Dancing');
  }
}

void main(List<String> args) {
  final musician = Musician('Singer');
  print(musician.name);
  musician.canPlayPiano = true;
  musician.entertainMe();

  final maestro = Maestro('Conductor');
  maestro.canConduct = true;
  maestro.entertainMe();
  maestro.canDance();
}
