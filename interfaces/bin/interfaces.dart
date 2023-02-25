void main() {
  var person = Person(firstName: 'John', lastName: 'Doe');
  print(person.fullName);
  print(getFullName(person)); // FullName Argument received Person instance
}

String getFullName(FullName obj) => obj.fullName;

mixin FirstName {
  String get firstName;
}
mixin LastName {
  String get lastName;
}
mixin FullName on FirstName, LastName {
  String get fullName => '$firstName $lastName';
}

class Person with FirstName, LastName, FullName {
  @override
  final String firstName;

  @override
  final String lastName;
  Person({required this.firstName, required this.lastName});
}
