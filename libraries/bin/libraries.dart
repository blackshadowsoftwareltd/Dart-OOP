import 'package:libraries/lib_1.dart' show A, anotherFunc2;

void main() {
  final a = A();
  anotherFunc2();
  print(a.publicField);
}
