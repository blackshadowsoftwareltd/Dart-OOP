class Singleton {
  Singleton._primateConstructor();
  static final _instance = Singleton._primateConstructor();

  factory Singleton() => _instance;
}

class ConstantClass {
  const ConstantClass();
}
