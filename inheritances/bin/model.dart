class Animal {
  final String name;

  Animal({required this.name});

  Animal.fromJson() : name = 'Jerry';

  void whoAmI() => print('I am an $name');
  void chase(Animal animal) => print('I am chasing a $animal');
}

class Mouse extends Animal {
  Mouse() : super(name: 'Jerry');
}

class Cat extends Animal {
  Cat() : super(name: 'Tom');

  ///? Chase method can not override because chese method is not property of Mouse class.
  ///? So follow the code below >> chase(covariant Mouse mouse) !! covariant keyword is used to override the method.
  //! @override
  //! void chase(Mouse mouse) => print('I am chasing a $animal');
  @override
  void chase(covariant Mouse mouse) => print('I am chasing a $mouse');
}

class Bird extends Animal {
  Bird({required super.name});
}

class Duck extends Bird {
  Duck({required super.name});

  @override
  void whoAmI() => print('I am a duck');

  void swim() => print('I am swimming');
}
