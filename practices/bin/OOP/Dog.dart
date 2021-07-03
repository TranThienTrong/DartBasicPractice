import 'Animal.dart';

class Dog extends Animal{

  Dog(int? age) : super(age);

  @override
  void sound() {
    print('Gâu');
  }
  @override
  String toString() {
    return "Dog(${age})";
  }

}