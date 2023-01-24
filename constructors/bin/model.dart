import 'dart:math';

class Point {
  Point({
    required this.x,
    required this.y,
  }); // must need this constructor for zeroX & zeroY constructors

  factory Point.randrom({required bool isPositive}) {
    int minNegative = -99;
    int maxNegative = -1;
    int minPositive = 0;
    int maxPositive = 99;

    int randomNegative =
        minNegative + Random().nextInt(maxNegative - minNegative);
    int randomPositive =
        minPositive + Random().nextInt(maxPositive - minPositive);

    return isPositive
        ? Point(x: randomPositive, y: randomPositive)
        : Point(x: randomNegative, y: randomNegative);
  }

  factory Point.explanation() => origin;
  factory Point.Explanation2() => Point.randrom(
      isPositive:
          true); // access another factory constructor using factory constructor

  final int x;
  final int y;
  static Point origin = Point(x: 0, y: 0);

  @override
  String toString() {
    return 'A{x: $x, y: $y}';
  }
}
