import 'model.dart' show Point;

void main() {
  final p = Point.randrom(isPositive: true);
  final n = Point.randrom(isPositive: false);

  print(p);
  print(n);
}
