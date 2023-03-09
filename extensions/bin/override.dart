class Person {
  final String name;
  final int age;
  Person({required this.name, required this.age});
}

///* extension contain same getter
extension PersonInfo on Person {
  String get userInfo => "Name: $name, Age: $age";
  String get description =>
      "This is a person name $name, and he is $age years old";
}

///* extension contain same getter
extension PersonDescription on Person {
  String get userInfo => "Name: $name, Age: $age";
  String get description =>
      "This is a person name $name, and he is $age years old";
}
