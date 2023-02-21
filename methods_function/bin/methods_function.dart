void main() {
  ///? Method without parameter
  print(add());
  print(minus());
  print(multiply());
  print(divide());

  ///? Method with parameter
  print(add(20, 10));
  print(minus(20, 10));
  print(multiply(20, 10));
  print(divide(20, 10));
}

int add([int a = 10, int b = 5]) => a + b;
int minus([int a = 10, int b = 5]) => a - b;
int multiply([int a = 10, int b = 5]) => a * b;
int divide([int a = 10, int b = 5]) => a ~/ b;
