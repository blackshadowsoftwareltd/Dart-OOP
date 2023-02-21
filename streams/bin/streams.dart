import 'dart:async';

void main() {
  asyncGenerator().listen(print);
}

Stream<int> asyncGenerator() async* {
  for (int i = 0; i < 5; i++) {
    await Future.delayed(const Duration(milliseconds: 500));
    yield i;
  }
  yield* negativeStream;
}

final negativeStream =
    Stream<int>.periodic(const Duration(milliseconds: 500), (int i) => -i)
        .take(5);
