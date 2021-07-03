import 'Animal.dart';
import 'Dog.dart';

class Cat extends Animal {
  String? hobby;

  Cat({String? hobby, int? age}) : super(age) {
    this.hobby =hobby;
  }

  @override
  void sleep() {
    print('Cat sleep');
  }

  @override
  void sound() {
    print('Meoww');
  }

  @override
  String toString() {
    return "Cat(${hobby}, ${age})";
  }
}

void main() {
  const animalJson = [
    {'type': 'cat', 'hobby': 'sleep', 'age': 5},
    {'type': 'dog', 'sound': 'Gau', 'age': 5}
  ];

  final animals = animalJson.map((animalJson) => Animal.build(animalJson));

  animals.forEach((e) => print(e));
}
