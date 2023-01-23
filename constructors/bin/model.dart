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
  final int x;
  final int y;

  @override
  String toString() {
    return 'A{x: $x, y: $y}';
  }
}
