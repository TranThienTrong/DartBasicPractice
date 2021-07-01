void main() {
  int nullSafe = 10;
  int? nonNullSafe;

  nullSafe = nonNullSafe ?? 69;



  function2("trong");

  (_) => print("hello");

}


class Person{


  String? name;
  int? age;

  Person( {String? name,int? age} ){
    this.name = name;
    this.age = age;
  }
}

void function( {required String name,required int age} ){

}

void function2( String name,{int age = 0}){
  print("${name} ${age}");
}

int sum(int a, int b) => a+b;


void method(){
  print("hello");
}
