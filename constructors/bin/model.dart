class A {
  // Named constructor
  A(this.x, {required this.y, required this.z});

  A.zero(this.x, {required this.y}) : z = 0; // Zero constructor

  A.fromJson(Map<String, dynamic> json) // From JSON constructor
      : x = json['x'],
        y = json['y'],
        z = json['z'];

  final int x;
  final int y;
  final int z;

  @override
  String toString() {
    return 'A{x: $x, y: $y, z: $z}';
  }
}
