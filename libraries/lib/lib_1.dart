library library_1;

import 'dart:math' as math; // math is importable from another library
import 'dart:io' as io; // io is importable from another library
import 'dart:convert' as convert; // convert is importable from another library

part 'lib_2.dart';
part 'lib_3.dart';
part 'lib_4.dart';

class A {
  late int _privateField;
  late int publicField = 1;
  void _privateMethod() {}
  void publicMethod() {}
}
