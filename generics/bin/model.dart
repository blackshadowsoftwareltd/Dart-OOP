class User<E> {
  final E id;
  final E name;
  final E email;
  User(this.id, this.name, this.email);
  @override
  String toString() => 'User{id: $id, name: $name, email: $email}';
}

class Product<E> {
  final E id;
  final E name;
  final E price;
  Product(this.id, this.name, this.price);
  @override
  String toString() => 'Product{id: $id, name: $name, price: $price}';
}

class Cart<E> {
  final E id;
  final E name;
  final E qty;
  Cart(this.id, this.name, this.qty);
  @override
  String toString() => 'Cart{id: $id, name: $name, qty: $qty}';
}

final usersList = [
  ...List.generate(3, (i) => User('$i', 'John', 'example@e.io'))
];
final productsList = [
  ...List.generate(3, (i) => Product('$i', 'Product $i', 10.0))
];
final cartsList = [
  ...List.generate(3, (i) => Cart('$i', 'Cart ${i + i}', 2 * i))
];
