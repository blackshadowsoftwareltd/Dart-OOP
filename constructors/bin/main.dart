import 'model.dart' show A;

void main() {
  A a = A();
  print(a.a);
  print(a.b);
  print(a.c);
  a.d = 0;
  print(a.d);
  a.e = 0;
  print(a.e);
  print(a.f);
  print(A.g);
  A.h = 0;
  print(A.h);
  print(A.i);
  A.j = 0;
  print(A.j);
  print(A.k);
  a.t ??= null;
  print(a.t == null);
}
