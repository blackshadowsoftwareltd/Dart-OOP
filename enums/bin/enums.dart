void main() {
  try {
    Animal.cat.jump();
    Animal.dog.jump();
    Animal.hen.jump();
    Animal.fish.jump();
  } catch (e) {
    print(e.toString());
  }
}

enum Animal with CanJump {
  cat(jumpHeight: 2),
  dog(jumpHeight: 1.5),
  hen(jumpHeight: 0.5),
  fish(jumpHeight: 0);

  @override
  final double jumpHeight;
  const Animal({required this.jumpHeight});
}

mixin CanJump {
  double get jumpHeight;
  void jump() {
    if (jumpHeight < 1) {
      throw Exception('Jump height is too low');
    } else {
      print('Jumped $jumpHeight meters high');
    }
  }
}
