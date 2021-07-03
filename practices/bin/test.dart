int count = 0;

void main() {
  var sayHi = (String name) => 'hi ${name}';
  print(sayHi("Trong"));

  var a = (x) {
    return x * 10;
  };

  print(a(10));
  //func(increaseCount);
}

typedef hehe = String;

void welcome(hehe Function(hehe) greet, hehe name) {
  print(greet(name));
}

void func(void doSth) {
  print("count = " + count.toString());
  count++;
  increaseCount();
  print("count = " + count.toString());
}

void increaseCount() {
  count++;
}
