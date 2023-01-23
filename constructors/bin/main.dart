import 'model.dart' show A;

void main() {
  A zero = A.zero(10, y: 20); // Zero constructor
  A zeroX = A.zeroX(x: 10); // Zero constructor
  A zeroY = A.zeroY(y: 20); // Zero constructor
  A zeroZ = A.zeroZ(z: 30); // Zero constructor
  print(zero.toString());
  print(zeroX.toString());
  print(zeroY.toString());
  print(zeroZ.toString());
}
