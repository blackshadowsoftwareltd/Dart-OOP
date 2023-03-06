void main() {
  ///! the age key is overwritten by the second map using + operator
  final mapAdd = {'name': 'John', 'age': 30} + {'age': 40, 'city': 'New York'};
  print(mapAdd);

  ///! the city is matched and removed from the map but the age is not matched so it is not removed
  final mapRemove = mapAdd - {'age': 20, 'city': 'New York'};
  print(mapRemove);

  ///? the * operator is used to repeat the map 3 times
  print(mapRemove * 3);
}

extension MapOperations<K, V> on Map<K, V> {
  ///! the + operator is used to merge two maps
  Map<K, V> operator +(Map<K, V> other) => {...this, ...other};

  ///! the - operator is used to remove the matching keys and values from the map
  Map<K, V> operator -(Map<K, V> other) => {...this}..removeWhere(
      (key, value) => other.containsKey(key) && other[key] == value);

  Iterable<Map<K, V>> operator *(int times) sync* {
    for (int i = 0; i < times; i++) yield this;
  }
}
