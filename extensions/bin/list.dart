extension ItarableExt<T extends num> on Iterable<T> {
  T get sum => reduce((a, b) => a + b as T);
}

extension ListExt<T extends num> on List<T> {
  List<T> get acending => this..sort((a, b) => a.compareTo(b));
  List<T> get descending => this..sort((a, b) => b.compareTo(a));
  List<T> get removeZero => [
        for (T v in this)
          if (v != 0) v
      ];

  T? get second => length < 2 ? null : this[1];
  T? get third => length < 3 ? null : this[2];
  T? get fourth => length < 4 ? null : this[3];
  T? get fifth => length < 5 ? null : this[4];
  T? get secondLast => length < 2 ? null : this[length - 2];
  T? get thirdLast => length < 3 ? null : this[length - 3];
  T? get fourthLast => length < 4 ? null : this[length - 4];
  T? get fifthLast => length < 5 ? null : this[length - 5];

  List<T> takeMax(int n) => [
        for (T v in this)
          if (v <= n) v
      ];
  List<T> takeMin(int n) => [
        for (T v in this)
          if (v >= n) v
      ];
  List<T> takeBetween(int min, int max) => [
        for (T v in this)
          // if (v >= min && v <= max) v
          if ((v > min && v < max) || v == min || v == max) v
      ];
}
