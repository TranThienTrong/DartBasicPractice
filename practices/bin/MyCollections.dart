void main() {
  Map<String, Object> details = new Map();
  details['name'] = 'trong';
  details['age'] = 22;

  var growableList = [];
  growableList.add('Trong');
  growableList.insert(0, 'Thien');
  growableList.insert(0, 'Tran');

  Set set = {"Tran", "Thien", "Trong"};

  Set set2 = {"Trong", "Dep", "Trai"};

  Iterable set3 = set2.map((e) => e + " 123");

  set3.forEach((element) {
    print(element);
  });

  Set set4 = {};
  for(var item in set2){
    set4.add(item + " 123");
  }

  set4.forEach((element) {
    print(element);
  });

  // set.forEach((element) {
  //   print(element);
  // });
  List colors = ['yelow', 'green', ...set];

  Map vipRestaurant = {"achivement": "best restaurant", "salary": "\$10,000"};

  var start = 6;
  Map restaurant = {"chief": "Trong", if (start > 4) ...vipRestaurant};

  print(restaurant);
}
