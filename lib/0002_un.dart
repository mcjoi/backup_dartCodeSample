void main() {
  final f = FamilyMember('jeremy', 23, 'f');
  print('${f.name} / ${f.age} / ${f.gender}');

  // put argument directly
  print(
    FamilyMemberInfo(FamilyMemberClass.father, FamilyMember('john', 35, 'm'))
        .personInfomation(),
  );

  // put argument with variable

  const FamilyMemberClass familyMemberClass1 = FamilyMemberClass.daughter;
  final FamilyMember familyMemberInfo1 = FamilyMember('Sarah', 12, 'f');

  print(
    FamilyMemberInfo(familyMemberClass1, familyMemberInfo1).personInfomation(),
  );

  // make clearly family list's generic type follow

  final List<List> family = [
    [FamilyMemberClass.grandFather, FamilyMember('albert', 82, 'm')],
    [FamilyMemberClass.grandMother, FamilyMember('susan', 78, 'f')],
    [FamilyMemberClass.father, FamilyMember('jeremy', 56, 'm')],
    [FamilyMemberClass.mother, FamilyMember('soo', 55, 'f')],
    [FamilyMemberClass.son, FamilyMember('chales', 18, 'm')],
    [FamilyMemberClass.daughter, FamilyMember('Sarah', 12, 'f')],
  ];

  family.asMap().forEach((key, value) {
    print(
      FamilyMemberInfo(value[0] as FamilyMemberClass, value[1] as FamilyMember)
          .personInfomation(),
    );
  });
}

// enum class
enum FamilyMemberClass {
  grandFather,
  grandMother,
  father,
  mother,
  son,
  daughter
}

// family class
class FamilyMember {
  FamilyMember(this._name, this._age, this._gender);
  final String _name;
  final int _age;
  final String _gender;

  String get name => _name;
  int get age => _age;
  String get gender => _gender;
}

// familyMember class with person
class FamilyMemberInfo {
  FamilyMemberInfo(this._familyMember, this._person);
  final FamilyMemberClass _familyMember;
  final FamilyMember _person;

  FamilyMemberClass get familyMember => _familyMember;
  FamilyMember get person => _person;

  String personInfomation() {
    final gen = (_person._gender == 'f') ? 'She' : 'He';
    final result =
        'the person\'s name is ${_person.name}, $gen is ${_person.age}years old, and $gen is my ${_familyMember.name}';

    return result;
  }
}
