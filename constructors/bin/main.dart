import 'model.dart' show A;

void main() {
  A a = A(10, y: 20, z: 30);
  A zero = A.zero(10, y: 20); // Zero constructor
  A json = A.fromJson({'x': 10, 'y': 20, 'z': 30}); // From JSON constructor
  print(a.toString());
  print(zero.toString());
  print(json);
}
