void main() {
  ///?  do complex operation
  final x = doComplexOparation(10.0, 5.0, operation: (sum) => sum + 50);
  print('Do something with the sum of (a+b) = : $x');
}

///?  do complex operation
T doComplexOparation<T extends num>(T a, T b,
        {required T Function(T) operation}) =>
    operation(add(a, b));

T add<T extends num>(T a, T b) => a + b as T;
