void main() {
  print('Hello World' - 'World');
  print('Hello World' - 'Earth'); 
}

extension RemoveString on String {
  String operator -(String other) => replaceAll(other, '');
}
