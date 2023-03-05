void main() {
  print([1, 2, 3, 4, 5] - [3, 5]);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> operator -(Iterable<T> other) => where((e) => !other.contains(e));
}
