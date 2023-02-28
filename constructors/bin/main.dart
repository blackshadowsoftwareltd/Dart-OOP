void main() {
  final cats = <Dog>{
    Dog(name: 'Modi', age: 80),
    Dog(name: 'Joe Biden', age: 82),
    Dog(name: 'Modi', age: 80),
  };
  cats.forEach(print);
}

class Dog with Pet {
  @override
  final int age;

  @override
  final String name;

  @override
  final PetType type;

  const Dog({required this.name, required this.age}) : type = PetType.dog;
}

enum PetType { dog, cat }

mixin Pet {
  String get name;
  PetType get type;
  int get age;
  @override
  String toString() => 'Pet{name: $name, type: $type, age: $age}';

  @override
  int get hashCode => name.hashCode ^ type.hashCode ^ age.hashCode;

  @override
  bool operator ==(Object other) => other.hashCode == hashCode;
}
