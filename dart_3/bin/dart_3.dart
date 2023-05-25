void main() {
  final foo = Foo(one: 'One', two: 2);
  final Foo(:one, :two) = foo;
  print('one $one, two $two');
}

class Foo {
  final String one;
  final int two;

  Foo({required this.one, required this.two});
}
