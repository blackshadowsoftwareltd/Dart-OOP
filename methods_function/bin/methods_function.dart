void main() {
  ///? Method not work
  print(doSomething(10, 20)); //! print >> Closure: () => int

  ///? Method
  final result = doSomething(20, 30);
  print(result());

  ///? Another way
  print(doSomething(410, 60)());
}

int Function() doSomething(int lhs, int rhs) => () => lhs + rhs;
