void main() {
  List<int> list = [1, 2, 3, 4, 5, 6];
  var list2 = ["Tran","Thien", "Trong"];

  var reduceList = list.reduce((a, b) => a + b);
  var reduceList2 = list2.reduce((value, element) => (element as String)+ " dep trai");

  print(reduceList);
  print(reduceList2);

  Iterable evenNums = list.where((element) => element % 2 == 0);

  evenNums.forEach((element) => print(element));

  var trong = list2.firstWhere((element) => element == "Thien", orElse: () =>"Dep trai");

  print(trong);
}
