import 'package:equatable/equatable.dart';

import 'Cat.dart';
import 'Dog.dart';

abstract class Animal {
  void sleep() {
    print('sleep');
  }

  void sound();

  int? _age;

  Animal(int? age) {
    this._age = age;
  }

  factory Animal.build(Map<String, Object> animalJson) {
    Object? type = animalJson['type'];
    switch (type) {
      case 'cat':
        Object? hobby = animalJson['hobby'];
        Object? age = animalJson['age'];
        return new Cat(hobby: hobby as String, age: age as int);
      case 'dog':
        Object? sound = animalJson['sound'];
        Object? age = animalJson['age'];
        return new Dog(age as int);
      default:
        throw UnimplementedError('Cannot find type');
    }
  }

  int? get age => this._age;

  set age(int? value) {
    _age = value;
  }

  @override
  bool operator ==(Object other) {
    if (other is Animal) {
      return _age == other.age;
    } else {
      return false;
    }
  }

  @override
  int get hashCode => _age.hashCode;
}
