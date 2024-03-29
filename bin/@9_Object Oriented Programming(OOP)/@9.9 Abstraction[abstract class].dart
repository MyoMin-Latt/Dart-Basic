// Abstraction(abstract class)
// Abstract classes can't be instantiated
// all methods(only function name) in abstract must be override

void main() {
  // Person person = Person(); // Abstract classes can't be instantiated.
  Engineer engineer = Engineer();
  engineer.name();
  engineer.age();
  var address = engineer.address();
  print(address);
  print(engineer.skill);
  engineer.job(); // extra method in child class
  engineer.phone(); // extra method in parent class
}

abstract class Person {
  String skill = 'Aye';
  // abstract methods
  void name();
  void age();
  String address();

  // regular methods
  void phone() {
    print('Phone is 09123456789');
  }

  // Person() {
  //   print('Constructor in person');
  // }
}

class Engineer extends Person {
  @override
  // ignore: overridden_fields
  String skill = 'Aye aye';
  @override
  String address() {
    return 'Address is YGN';
    // throw UnimplementedError();
  }

  @override
  void age() {
    print('Age is 23');
  }

  @override
  void name() {
    print('Name is Mg Mg');
  }

  void job() {
    print('Job is programmer');
  }
}
