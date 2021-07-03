class Trong {
  String? outlook;

  Trong(String? outlook) {
    try{
      if(outlook!="handsome") throw lieException();
    } on lieException catch(e){
      print(e);
    }
    this.outlook = outlook;
  }
}

class Fraction {
  int? numerator;
  int? denominator;

  Fraction(int? numerator, int? denominator) {
    try {
      if (denominator == 0) {
        throw IntegerDivisionByZeroException();
      }
    } on IntegerDivisionByZeroException catch (e) {
      print("denominator cannot be 0");
    }
    this.numerator = numerator;
    this.denominator = denominator;
  }

  double? get result => numerator! / denominator!;
}

class lieException implements Exception {
  @override
  String toString() {
    return "You lying";
  }
}

void main() {
  new Trong("not handsome");

  //new Fraction(3, 1);
  print("continue");
}
