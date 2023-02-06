mixin MixinClass {
  void doSomeThing() {}
}

class Model with MixinClass {
  @override
  void doSomeThing() {
    print('do some thing in mixin');
  }
}
