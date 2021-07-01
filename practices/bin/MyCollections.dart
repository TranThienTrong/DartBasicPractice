void main() {
  Map<String, Object> details = new Map();
  details['name'] = 'trong';
  details['age'] = 22;

  var growableList = [];
  growableList.add('Trong');
  growableList.insert(0, 'Thien');
  growableList.insert(0, 'Tran');


  Set set = {"Tran","Thien","Trong"};
  Set set2 = {"Trong","Dep","Trai"};

  List colors = [
    'yelow',
    'green',

    ...set
  ];

  Map vipRestaurant = {
    "achivement":"best restaurant",
    "salary" : "\$10,000"
  };

  var start = 6;
  Map restaurant = {
    "chief" : "Trong",
    if(start>4)
     ...vipRestaurant
  };


  print(restaurant);



  
}
