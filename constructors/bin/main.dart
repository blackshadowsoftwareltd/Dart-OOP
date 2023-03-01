void main() {
  final father = FamilyMember(name: 'Dat');
  final mother = FamilyMember(name: 'Mom');
  final family = father + mother; // + operator comes from extension
  print(family);
}

class FamilyMember {
  final String name;
  const FamilyMember({required this.name});
  @override
  String toString() => 'FamilyMember (name: $name)';
}

class Family {
  final List<FamilyMember> members;
  const Family({required this.members});
  @override
  String toString() => 'Family (members: $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [this, other]);
}
