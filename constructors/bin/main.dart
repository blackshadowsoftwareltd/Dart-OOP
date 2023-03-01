void main() {
  const names = ['John', 'Doe', 'Jack', 'Jill'];
  final multipliedList = names * 3;
  print(multipliedList);
}

extension Times<T> on Iterable<T> {
  Iterable<T> operator *(int times) sync* {
    for (int i = 0; i < times; i++) {
      yield* this;
    }
  }
}
