class A {
  A({
    required this.x,
    required this.y,
    required this.z,
  }); // must need this constructor for zeroX & zeroY constructors

  A.zero(this.x, {required this.y}) : z = 0; // Zero constructor

  A.zeroX({required int x}) : this(x: x, y: 0, z: 0); // ZeroX constructor
  A.zeroY({required int y}) : this(x: 0, y: y, z: 0); // ZeroY constructor
  A.zeroZ({required int z}) : this(x: 0, y: 0, z: z); // ZeroY constructor

  final int x;
  final int y;
  final int z;

  @override
  String toString() {
    return 'A{x: $x, y: $y, z: $z}';
  }
}
