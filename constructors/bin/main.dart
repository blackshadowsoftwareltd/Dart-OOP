import 'model.dart' show Point;

void main() {
  final p = Point.randrom(isPositive: true);
  final n = Point.randrom(isPositive: false);

  final e = Point.explanation();
  final e2 = Point.Explanation2();

  print(p);
  print(n);
  print(e);
  print(e2);
}
