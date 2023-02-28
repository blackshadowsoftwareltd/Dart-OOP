import 'dart:mirrors';

void main() {
  final person = Person(name: 'Person Name', age: 20);
  print(person);
  final house = House(address: 'Dhake', rooms: 5);
  print(house);
}

class Person with HasDiscription {
  final String name;
  final int age;
  Person({required this.name, required this.age});
}

class House with HasDiscription {
  final String address;
  final int rooms;
  const House({required this.address, required this.rooms});
}

extension AsKey on VariableMirror {
  String get asKey {
    final fieldName = MirrorSystem.getName(simpleName);
    final fieldType = MirrorSystem.getName(type.simpleName);

    return '$fieldName : (<T> $fieldType)';
  }
}

mixin HasDiscription {
  @override
  String toString() {
    final reflection = reflect(this);

    final thisType = MirrorSystem.getName(reflection.type.simpleName);

    final variables =
        reflection.type.declarations.values.whereType<VariableMirror>();

    final properties = <String, dynamic>{
      for (final x in variables)
        x.asKey: reflection.getField(x.simpleName).reflectee,
    }.toString();

    return '$thisType : $properties';
  }
}
