part of 'lib_1.dart';

void anotherFunc2() async {
  final a = A();
  a._privateMethod();

  a._privateField =
      math.Random().nextInt(100); // math is imported in lib_1.dart
  print(a._privateField);
}
