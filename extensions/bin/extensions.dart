import 'override.dart';

void main() {
  final p = Person(name: 'John', age: 20);
  print(PersonInfo(p).userInfo); // extension contain same getter
  print(PersonDescription(p).description); // extension contain same getter
}
