abstract class UserRepository {
  List<String> users = [];

  void add(String user);
  void addAll(List<String> users);
  void remove(String user);
  void update(int i, String user);
  void find(String user);
}

class User implements UserRepository {
  @override
  List<String> users = [];

  @override
  void add(String user) {
    users.add(user);
    print('added $user');
  }

  @override
  void find(String user) => print('found ${users.contains(user)}');

  @override
  void remove(String user) {
    users.remove(user);
    print('removed $user');
  }

  @override
  void update(int i, String user) {
    users[i] = user;
    print('updated $user');
  }

  @override
  void addAll(List<String> users) {
    this.users.addAll(users);
  }
}
