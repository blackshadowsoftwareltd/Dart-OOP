class A {
  A(
    int a,
    int b,
    int c,
    int d,
    int e,
    int f,
    int g,
    int h,
    int i,
    int j,
    int k,
    int t,
  ) {
    this.a = a;
    this.b = b;
    // this.c = c;  'c' can't be used as a setter because it's final.
    this.d = d;
    this.e = e;
    // this.f = f; 'f' can't be used as a setter because it's final.
    A.g = g;
    A.h = h;
    A.i = i;
    A.j = j;
    // A.k = k; Constant variables can't be assigned a value.
    this.t = t;
  }

  int? _primate;
  int? a;
  int? b = 1;

  final int c = 2;

  late int d;
  late final int e;
  late final int? t;
  late final int f = 10;

  static int g = 6;
  static late int h;
  static late int i = 5;
  static late final int j;

  static const int k = 10;
}
