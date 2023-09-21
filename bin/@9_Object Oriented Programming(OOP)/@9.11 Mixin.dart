// inheritance [single] [variable, method, supper consturctor]
// mixin [multiple] [variable, method]
// Mixins can't declare constructors
// Abstract cannot declare constructors

// extends
//   > normal class => can call part
//   > abstract class => must override only function name();

// Abstraction(interface)
// implement
//   > must override all(var, method) in the parent class

// minxin
// with
//   > can override any method of mixin & any class

void main() {
  Engineer engineer = Engineer();
  engineer
    ..physics()
    ..english()
    ..maths()
    ..engineering(); // sprect operator
  // engineer.english();
  // engineer.maths();
  // engineer.physics();
  // engineer.engineering();
}

mixin Physics {
  String name = 'Physics';
  // Physics(){};// Mixins can't declare constructors.
  void physics() => print('Studying physics');
  void physics01() => print('Studying physics01');
}

class English {
  void english() => print('Studying english');
}

mixin Maths {
  void maths() => print('Studying Mathematics');
}

class Engineer with Physics, English, Maths {
  void engineering() => print('Engineer study engineering');
  @override
  void maths() => print('Engineer study Engineering Mathermatics');
}
