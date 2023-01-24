import 'dart:math';

class Point {
  Point({
    required this.x,
    required this.y,
  }); // must need this constructor for zeroX & zeroY constructors

  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  final int x;
  final int y;

  @override
  String toString() {
    return 'A{x: $x, y: $y}';
  }
}
