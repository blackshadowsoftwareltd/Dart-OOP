void main() {

  ///? Sorting the enum values by comparing the price
  print(TeslaCars.values);
  print(TeslaCars.values.toList()..sort());
}

enum TeslaCars implements Comparable<TeslaCars> {
  modelA(price: 1254155222),
  modelB(price: 54854548518),
  modelC(price: 7845154521),
  modelD(price: 2548445151),
  modelE(price: 1284515425);

  final double price;
  const TeslaCars({required this.price});

  ///? Overriding the compareTo method from the Comparable interface
  @override
  int compareTo(TeslaCars other) => price.compareTo(other.price);
}
