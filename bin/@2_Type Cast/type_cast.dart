void main() {
  double myDouble = 9.78;
  // int myInt = myDouble as int; // type 'double' is not a subtype of type 'int' in type cast
  int myInt = myDouble.toInt();
  print(myDouble);
  print(myInt);
}
