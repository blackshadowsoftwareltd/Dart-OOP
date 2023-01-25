import 'model.dart' show Point;

void main() {
  final p = Point();
  p.setX = 10;
  p.setY = 20;
  

  print('p + n = ${p.sum}');
  print('p - n = ${p.diff}');
}
