void main() {
  const tupleInt = Tuple(left: 1, right: 2);
  print(tupleInt);
  print('Type: ${tupleInt.left.runtimeType} and ${tupleInt.right.runtimeType}');
  print('Swaped ${tupleInt.swap()}');

  const tupleString = Tuple(left: 'left', right: 'right');
  print(tupleString);
  print(
      'Type: ${tupleString.left.runtimeType} and ${tupleString.right.runtimeType}');
  print('Swaped ${tupleString.swap()}');

  final swaped = tupleString.swap();
  print(swaped); //? swaped is Tuple<String, String> .. <R,L>

  print(tupleInt.sum); //? sum will be work if both are num type.
}

///? Menttion generic type. otherwise it will be dynamic type.
extension<L, R> on Tuple<L, R> {
  Tuple<R, L> swap() => Tuple(left: right, right: left); //? Swaped so=> <R, L>
}

///? Now we can sum if both are num (int/double) type.
extension<L extends num, R extends num> on Tuple<L, R> {
  num get sum => left + right;
}

class Tuple<L, R> {
  final L left;
  final R right;
  const Tuple({required this.left, required this.right});

  @override
  String toString() => 'Tuple(left: $left, right: $right)';
}
