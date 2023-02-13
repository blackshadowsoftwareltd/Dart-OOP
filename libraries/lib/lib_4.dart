part of 'lib_1.dart';

void anotherFunc4() {
  final a = A();
  a._privateField =
      convert.jsonEncode('object').length; // convert is imported in lib_1.dart
}
