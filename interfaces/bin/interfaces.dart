import 'model.dart';

void main() {
  final user = User();

  print(user.users);

  user.add('user6');

  print(user.users);

  user.find('user2');

  print(user.users);

  user.remove('user6');

  print(user.users);

  user.update(user.users.length - 1, 'lastUser');

  print(user.users);
}
