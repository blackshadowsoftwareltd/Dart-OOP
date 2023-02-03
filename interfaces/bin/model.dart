class UserRepo {
  external void externalMethod(String s); // body less method.
}

class User extends UserRepo {
  @override
  void externalMethod(String s) => print('External method called with $s');
}
