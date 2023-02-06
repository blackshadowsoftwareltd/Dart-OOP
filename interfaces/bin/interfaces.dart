import 'model.dart' show D;

void main() {
  final model = D();
  model.a();
  model.b();
  model.c();
//========
  model.bToA();
  model.cToA();
}
