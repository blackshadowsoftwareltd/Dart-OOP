import 'model.dart' show Cart, Product, User, carts, products, users;

void main() {
  final user = getInfoById<User>(users, '1');
  print(
      'user >> ${user.toString()} << id ${user?.id.runtimeType} name ${user?.name.runtimeType} email ${user?.email.runtimeType}');

  final product = getInfoById<Product>(products, '5');
  print(
      'product >> ${product.toString()} << id ${product?.id.runtimeType} name ${product?.name.runtimeType} price ${product?.price.runtimeType}');

  final cart = getInfoById<Cart>(carts, '8');
  print(
      'cart >> ${cart.toString()} << id ${cart?.id.runtimeType} name ${cart?.name.runtimeType} qty ${cart?.qty.runtimeType}');
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
