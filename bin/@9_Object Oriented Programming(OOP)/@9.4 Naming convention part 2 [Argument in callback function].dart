// argument in callback function, under scole _

void main() {
  // calculate(
  //     num: 2,
  //     cal: (single, _, __, fourth) {
  //       print('$single');
  //     });
  calculate(
      num: 2,
      cal: (single, dob, triple, fourth) {
        print('$single $dob $triple $fourth');
      });
}

void calculate({required int num, required Function(int, int, int, int) cal}) {
  cal(num * 1, num * 2, num * 3, num * 4);
}
