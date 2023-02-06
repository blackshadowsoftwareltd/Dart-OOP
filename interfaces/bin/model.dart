mixin Mixin1 {
  void doSomeThing1() {}
}
mixin Mixin2 {
  void doSomeThing2() {}
}

class Model with Mixin1, Mixin2 {
  @override
  void doSomeThing1() {
    print('do some thing in mixin 1');
  }

  @override
  void doSomeThing2() {
    print('do some thing in mixin 2');
  }
}
