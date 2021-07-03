class Person {
  String? _name;
  int? _age;
  double? _height;

  static int totalPerson = 0;

  Person({String? name, int? age, double? height}) {
    totalPerson++;
    this._name = name;
    this._age = age;
    this._height = height;
  }

  Person.Teen({String? name, double? height}){
    totalPerson++;
    this._name = name;
    this._height = height;
    this._age = 18;
  }

  Person.Short({String? name, int? age}){
    totalPerson++;
    this._name = name;
    this._height = 150;
    this._age = age;
  }

  static void _method(){}
  int _methodA(){return 0;}


  String? get name => this._name;

  int? get age => this._age;

  double? get height => this._height;

  void set name(String? name) {
    this._name = name;
  }

  void set age(int? age) {
    this._age = age;
  }

  void set height(double? height) {
    this._height = height;
  }


  @override
  String toString() {
    return 'Person ( name: $_name, age: $_age, height: ${_height} )';
  }
}


void main() {
  Person p = new Person(name: "Trong");
  Person teen = new Person.Teen(name: "Trong");
  Person short = new Person.Short(name: "Trong", age: 22);

  print(Person.totalPerson);

}


