class Point {
  set setX(int x) => this.x = x;
  set setY(int y) => this.y = y;

  int get sum => x + y;
  int get diff => x - y;

  late int x;
  late int y;

  @override
  String toString() {
    return 'A{x: $x, y: $y}';
  }
}
