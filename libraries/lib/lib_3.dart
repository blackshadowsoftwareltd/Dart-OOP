part of 'lib_1.dart';

void anotherfunc3() {
  final a = A();
  a._privateMethod();
  final x = io.File('file'); // io is imported in lib_1.dart
  a._privateField = x.path.length;
}
