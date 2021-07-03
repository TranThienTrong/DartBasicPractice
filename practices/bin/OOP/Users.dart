import 'Animal.dart';
import 'Cat.dart';

class User implements Animal, Cat{
  String? email;
  String? password;

  User({String? email = '', String? password = ''}){
    this.email = email;
    this.password = password;
  }
  @override
  int? age;

  @override
  void sleep() {

  }

  @override
  void sound() {

  }

  @override
  String? hobby;

}