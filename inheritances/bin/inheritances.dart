void main() {
  final person1 = Person1();
  final person2 = Person2(role: Role.editor);
}

class Employee {
  final Role role;
  const Employee({required this.role});
}

class Person1 extends Employee {
  const Person1() : super(role: Role.admin); //? add role in initially
}

class Person2 extends Employee {
  const Person2({required super.role}); //? required super constructor's role
}

enum Role { admin, editor, author, user }
