class User {
  final String id;
  final String name;
  final String email;
  User(this.id, this.name, this.email);
  @override
  String toString() => 'User{id: $id, name: $name, email: $email}';
}

class Product {
  final String id;
  final String name;
  final double price;
  Product(this.id, this.name, this.price);
  @override
  String toString() => 'Product{id: $id, name: $name, price: $price}';
}

class Cart {
  final String id;
  final String name;
  final int qty;
  Cart(this.id, this.name, this.qty);
  @override
  String toString() => 'Cart{id: $id, name: $name, qty: $qty}';
}

final users = [...List.generate(10, (i) => User('$i', 'John', 'example@e.io'))];
final products = [
  ...List.generate(10, (i) => Product('$i', 'Product $i', 10.0))
];
final carts = [...List.generate(10, (i) => Cart('$i', 'Cart ${i + i}', 10))];
