class A {
  void a() => print('A');
}

mixin B on A {
  // on keyword will force extends class A
  void b() => print('B');
  void bToA() => b();
}
mixin C {
  void c() => print('C');
  void cToA() => c();
}

class D extends A with B, C {}
