class Animal {
  final String name;

  Animal({required this.name});

  Animal.fromJson() : name = 'Jerry';

  void whoAmI() {
    print('I am an $name');
  }
}

class Bird extends Animal {
  Bird({required super.name});
}

class Duck extends Bird {
  Duck({required super.name});
}
