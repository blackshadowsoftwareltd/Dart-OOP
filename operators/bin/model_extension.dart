extension PersonExt on Person {
  Family operator +(Person other) => Family(members: [this, other], pets: []);

  ///! Dart not support operator overloading. that means we can't use + operator in the same extension
  ///! even though a different object type is used. So we have to use a & operator instead of + operator
  Family operator &(Pet other) => Family(members: [this], pets: [other]);
}

extension PetExt on Pet {
  Family operator +(Pet other) => Family(members: [], pets: [this, other]);
}

extension FamilyExt on Family {
  Family operator +(Person other) =>
      Family(members: [...members, other], pets: pets);

  ///! Dart not support operator overloading. that means we can't use + operator in the same extension
  ///! even though a different object type is used. So we have to use a & operator instead of + operator
  Family operator &(Pet other) =>
      Family(members: members, pets: [...pets, other]);

  ///! '^' operator is used to merge two families. '^' symbol can be anyting. but condition and return type is important
  Family operator ^(Family other) => Family(
      members: [...members, ...other.members], pets: [...pets, ...other.pets]);
}

extension IsIdentical on Family {
  bool operator |(Family other) => identical(this, other);
}

class Person {
  final String name;
  Person({required this.name});

  @override
  String toString() => 'Person(name: $name)';
}

class Pet {
  final String name;
  Pet({required this.name});

  @override
  String toString() => 'Pet(name: $name)';
}

class Family {
  List<Person> members;
  List<Pet> pets;
  Family({required this.members, required this.pets});
  @override
  String toString() => 'Family(members: $members, pets: $pets)';
}
