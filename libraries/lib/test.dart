library test_lib;

class A {
  final int _privateField = 5;
  void _privateMethod() {}

  final int publicField = 10;
  void publicMethod() {}
}

void randomFunction() {
  final a = A();
  a._privateField;
  a._privateMethod();
  a.publicField;
  a.publicMethod();
}
