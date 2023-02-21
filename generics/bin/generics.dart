import 'model.dart'
    show Cart, Product, User, cartsList, productsList, usersList;

void main() {
  final users = Reusable<User>();
  users.addAll(usersList);
  print(users.list);
  final products = Reusable<Product>();
  products.addAll(productsList);
  print(products.list);
  final carts = Reusable<Cart>();
  carts.addAll(cartsList);
  print(carts.list);
}

class Reusable<T> {
  final List<T> _list = [];
  List<T> get list => _list;
  void add(T item) => _list.add(item);
  void addAll(List<T> items) => _list.addAll(items);
  void remove(T item) => _list.remove(item);
  void removeAt(int index) => _list.removeAt(index);
  void removeAll() => _list.clear();
  int length() => _list.length;
}
