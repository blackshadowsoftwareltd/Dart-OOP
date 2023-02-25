void main() {
  var person = Person();
  person.run(25);
  person.jump(5);
}

///* class implements mixin
class Person with MaxSpeed, CanRun, CanWalk {
  @override
  double speed; // speed must be override from MaxSpeed mixin

  Person() : speed = 00;
}

///* mixin
mixin MaxSpeed {
  abstract double speed;
}
mixin CanRun on MaxSpeed {
  void run(double speed) {
    this.speed = speed;
    print('$runtimeType is running with speed $speed');
  }
}
mixin CanWalk on MaxSpeed {
  void jump(double speed) {
    this.speed = speed;
    print('$runtimeType is walking with speed $speed');
  }
}
