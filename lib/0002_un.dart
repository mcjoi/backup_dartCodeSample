void main() {
  var f = Family('jeremy', 23, 'f');
  print('${f.name} / ${f.age} / ${f.gender}');

  // put argument directly
  print(FamilyMemberWithPerson(FamilyMember.father, Family('john', 35, 'm'))
      .personInfomation());

  // put argument with variable

  FamilyMember familyPersonWho = FamilyMember.daughter;
  Family familyPerson1 = Family('Sarah', 12, 'f');

  print(FamilyMemberWithPerson(familyPersonWho, familyPerson1)
      .personInfomation());
}

// enum class
enum FamilyMember { grandFather, grandMother, father, mother, son, daughter }

// family class
class Family {
  final String _name;
  final int _age;
  final String _gender;

  String get name => _name;
  int get age => _age;
  String get gender => _gender;

  Family(this._name, this._age, this._gender);
}

// familyMember class with person
class FamilyMemberWithPerson {
  final FamilyMember _familyMember;
  final Family _person;

  FamilyMember get familyMember => _familyMember;
  Family get person => _person;

  FamilyMemberWithPerson(this._familyMember, this._person);

  personInfomation() {
    String gen = (_person._gender == 'f') ? 'She' : 'He';
    String result =
        'the person\'s name is ${_person.name}, $gen is ${_person.age}years old,\nand $gen is my ${_familyMember.name}';

    return result;
  }
}
