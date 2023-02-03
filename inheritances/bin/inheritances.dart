import 'model.dart';

void main() {
  final duck = Duck(name: 'Munchkin');
  print('Duck name: ${duck.name}');
  duck.whoAmI(); // I am a duck. because of @override in Duck class
}
