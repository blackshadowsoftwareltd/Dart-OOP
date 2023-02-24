void main() {
  final person = Person(name: 'John', car: Car.lamborghini);
  switch (person.car) {
    case Car.tesla:
      print('Tesla');
      print(person.toString());
      break;
    case Car.bmw:
      print('BMW');
      print(person.toString());
      break;
    case Car.audi:
      print('Audi');
      print(person.toString());
      break;
    case Car.ford:
      print('Ford');
      print(person.toString());
      break;
    case Car.lamborghini:
      print('Lamborghini');
      print(person.toString());
      break;
    case Car.toyota:
      print('Toyota');
      print(person.toString());
      break;
  }
}

///? Person class
class Person {
  final String name;
  final Car car;
  const Person({required this.name, required this.car});
  @override
  String toString() => 'Person { name: $name, car: $car }';
}

///* Enums *///
enum Car {
  tesla(name: 'Tesla', color: 'Red', price: 100000),
  bmw(name: 'BMW', color: 'Black', price: 50000),
  audi(name: 'Audi', color: 'White', price: 40000),
  ford(name: 'Ford', color: 'Blue', price: 30000),
  lamborghini(name: 'Lamborghini', color: 'Yellow', price: 1000000),
  toyota(name: 'Toyota', color: 'Green', price: 20000);

  final String name;
  final String color;
  final double price;
  const Car({required this.name, required this.color, required this.price});
}
