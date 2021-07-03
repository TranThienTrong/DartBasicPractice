import '../OOP/Animal.dart';

extension on String {
  String tellTheTruth() => "I am just a character array";
}

extension IterableSum<T extends num> on Iterable<T> {
  T sumAll() => this.reduce((value, element) => (value + element) as T);
}

void main() {
  String str = "";
  print(str.tellTheTruth());

  List<int> list = [1, 2, 3];
  print(list.sumAll());
}
