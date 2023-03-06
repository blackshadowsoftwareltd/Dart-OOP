import 'model_extension.dart'
    show Person, Pet, PersonExt, FamilyExt, PetExt, IsIdentical;

void main() {
  final father = Person(name: 'father');
  final mother = Person(name: 'mother');
  final son = Person(name: 'son');
  final daughter = Person(name: 'daughter');

  final dog = Pet(name: 'dog');
  final cat = Pet(name: 'cat');
  final bird = Pet(name: 'bird');

  final family = father + mother;
  print('father + mother: $family');

  final familyWithPets = family & cat & dog;
  print('family & cat & dog: $familyWithPets');

  final familyWithChildren = familyWithPets + son + daughter;
  print('familyWithPets + son: $familyWithChildren');

  final familyWithBird = familyWithChildren & bird;
  print('familyWithChildren & bird: $familyWithBird');

  ///*=======================================================================

  final children = son + daughter;
  final pets = cat + dog & bird;
  final mergedFamily = children ^ pets;
  print('Children ^ Pets: $mergedFamily');

  print(
      'Is familyWithBird identical to mergedFamily: ${familyWithBird | mergedFamily}');
}
