part of 'lib_1.dart';

void anotherFunc2() async {
  final a = A();
  a._privateMethod();

  a._privateField = math.Random().nextInt(100);
  print(a._privateField);
}
