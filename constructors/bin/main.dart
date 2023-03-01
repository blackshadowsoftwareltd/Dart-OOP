void main() {
  print(sum(5, 10));
}

int sum(int? a, int? b) => a + b;

extension NullableAdd<T extends num> on T? {
  T operator +(T? other) {
    if (this == null && other == null) return 0 as T;
    if (this == null) return other as T;
    if (other == null) return this as T;
    return this! + other as T;
  }
}
