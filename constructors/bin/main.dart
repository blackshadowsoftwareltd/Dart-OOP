import 'model.dart' show Point;

void main() {
  final p = Point(x: 0, y: 0);
  final n = Point(x: 1, y: 1);

  print('p + n = ${p + n}');
  print('p - n = ${p - n}');
}
