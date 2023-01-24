import 'dart:math';

class Point {
  Point({
    required this.x,
    required this.y,
  }); // must need this constructor for zeroX & zeroY constructors

  num distanceTo(Point p) {
    final dx = x - p.x;
    final dy = y - p.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  final int x;
  final int y;

  @override
  String toString() {
    return 'A{x: $x, y: $y}';
  }
}
