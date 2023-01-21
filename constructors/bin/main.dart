void main() {
  A a = A();
  A b = A();
  print('${a.hashCode} ${b.hashCode}');
  print(identical(a, b));
}

class A extends Object {
  // String id;
  // A({required this.id});

}
