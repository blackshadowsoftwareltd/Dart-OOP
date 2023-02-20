import 'model.dart' show Cart, Product, User, carts, products, users;

void main() {
  final user = getInfoById<User>(users, '1');
  print(user.toString());

  final product = getInfoById<Product>(products, '5');
  print(product.toString());

  final cart = getInfoById<Cart>(carts, '8');
  print(cart.toString());
}

///? Generic method. Returns an object of type E?.
E? getInfoById<E>(List<E> list, String s) {
  E? e;
  for (E x in list) {
    if (x is User && (x.id) == s) return e = x;
    if (x is Product && (x.id) == s) return e = x;
    if (x is Cart && (x.id) == s) return e = x;
  }
  return e;
}
