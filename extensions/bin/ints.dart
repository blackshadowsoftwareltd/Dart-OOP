extension IntExt on int {
  int add1() => this + 1;
  int add5() => this + 5;
  int add10() => this + 10;
  int add50() => this + 50;
  int add100() => this + 100;
  int add(int value) => this + value;
  int subtract(int value) => this - value;
  int multiply(int value) => this * value;
  int divide(int value) => this ~/ value;
}
