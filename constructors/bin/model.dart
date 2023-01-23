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
    int p,
  )   : this._private = p,
        this.a = a,
        this.b = b,
        // this.c = c, final value already initialized
        this.d = d,
        this.e = e,
        // this.f = f, final value already initialized

        this.t = t {
    A.h = h; // static variable can't be initialized above
    A.j = j; // static variable can't be initialized above
  }

  int? _private;
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

  @override
  String toString() {
    return 'A{_private: $_private, a: $a, b: $b, c: $c, d: $d, e: $e, t: $t, f: $f, g: $g, h: $h, i: $i, j: $j, k: $k}';
  }
}
