void main() {
  try {
    Animal.cat
      ..jump()
      ..run();
    Animal.dog
      ..jump()
      ..run();
    Animal.hen
      ..jump()
      ..run();
  } catch (e) {
    print(e.toString());
  }
}

extension Jump on Animal {
  void jump() => print('$this is Jumping...');
}

enum Animal {
  cat,
  dog,
  hen;

  void run() => print('Running...');
}
