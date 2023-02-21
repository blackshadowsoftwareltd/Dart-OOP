void main() {
  ///?  do normal operation
  print(doOparation(10.0, 5.0, (a, b) => a + b));

  ///?  do complex operation
  final x = doComplexOparation(10.0, 5.0, (sum) => sum + 50);
  print('Do something with the sum of (a+b) = : $x');
}

///?  do normal operation
double doOparation(double a, double b, Function operation) => operation(a, b);

///?  do complex operation
double doComplexOparation(
        double a, double b, double Function(double) operation) =>
    operation(add(100, 50));
double add([double a = 10, double b = 5]) => a + b;
