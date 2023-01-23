class A {
  A(
    this._private,
    this.a,
    this.b,
    this.c,
    // this.d,
    this.e,
    this.t,
  ) : d = b // also initializable here
  {
    d = b;
    A.h = b; // static variable can't be initialized above
    A.j = b; // static variable can't be initialized above
  }

  int? _private;
  int? a;
  int b = 1;

  final int c;

  late int d;
  late final int e;
  late final int? t;
  late final int f = 10;

  static int g = 6;
  static late int h;
  static late int i = 5;
  static late final int j;

  static const int k = 10;

  @override
  String toString() {
    return 'A{_private: $_private, a: $a, b: $b, c: $c, d: $d, e: $e, t: $t, f: $f, g: $g, h: $h, i: $i, j: $j, k: $k}';
  }
}
