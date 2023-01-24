import 'model.dart' show Singleton, ConstantClass;

void main() {
  final s = Singleton();
  final s2 = Singleton();

  final c = ConstantClass(); // final
  const c2 = ConstantClass(); // const
  const c3 = ConstantClass(); // const

  print('is Identical: ${identical(s, s2)}'); // Is Identical: true

  print('is Identical: ${identical(c, c2)}'); // Is Identical: false
  print('is Identical: ${identical(c2, c3)}'); // Is Identical: true
}
