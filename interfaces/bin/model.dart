abstract class UserRepository {
  List<String> users = [];

  void readFromLocal(List<String> users);
}

class A {
  void methodForA() {}
}

class B {
  void methodForB() {}
}

class C {
  void methodForC() {}
}

class User implements A, B, C, UserRepository {
  User() {
    readFromLocal(_users);
  }

  @override
  List<String> users = [];

  @override
  void readFromLocal(List<String> users) {
    this.users.addAll(users);
  }

  @override
  void methodForA() => print('method For A');

  @override
  void methodForB() => print('method For B');
  @override
  void methodForC() => print('method For C');
}

const _users = ['user1', 'user2', 'user3', 'user4', 'user5'];
