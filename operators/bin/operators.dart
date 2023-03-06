void main() {
  final person = Person(name: 'John', age: 20);
  print('Person : $person');
  print('Pserson after 10 years later ${person + 10}');
}

class Person {
  final String name;
  final int age;
  Person({
    required this.name,
    required this.age,
  });

  ///? Overloading the + operator to increment the age of a person
  Person operator +(int other) => Person(name: name, age: age + other);

  @override
  String toString() => 'Person(name: $name, age: $age)';
}
