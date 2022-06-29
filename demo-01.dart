import 'dart:ffi';

void printInteger(int aNumber) {
  print('The umber is $aNumber');
}

void typeConversion() {
  // String -> int
  var one = int.parse('1');
  print(one == 1);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = one.toString();
  print(oneAsString == '1');

  // double -> String
  String piAsString = onePointOne.toStringAsFixed(1);
  print(piAsString == '1.1');
}



void main() {
  final number = 43;

  const foo = const [];
  print(foo);

  typeConversion();
  printInteger(number);
}
