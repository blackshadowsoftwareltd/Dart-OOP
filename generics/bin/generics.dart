void main() {
  final number = add();
  print(number);
  print(number.runtimeType);
}

CustomNum add<CustomNum extends num>() => 0 as CustomNum;
