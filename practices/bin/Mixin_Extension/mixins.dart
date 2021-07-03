mixin Swimmable{
  void swim() => print("Can swim");
}

class Animal{
  void breath() => print("All animals breath");
}

class Cat extends Animal with Swimmable {
}

class Person extends Animal with Swimmable{
}