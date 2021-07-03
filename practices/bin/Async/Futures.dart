Future<String> fetchUserOrder() {
  int numOfBurger = 1;

  return Future.delayed(Duration(seconds: 2),
      () => numOfBurger > 0 ? 'Hamburger' : throw Exception('Out of burger'));
}

Future<void> futureValue(){
  return Future.value("123");
}

Future<void> futureError(){
  return Future.error(UnimplementedError());
}



void main() async {
  print('waiting...');
  var buyer = await fetchUserOrder();
  print(buyer);
}

void handleFood(String food) {
  print("take ${food}");
  print("eat ${food}");
  print("poop ${food}");
}
