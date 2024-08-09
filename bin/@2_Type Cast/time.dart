import 'package:uuid/uuid.dart';

void main() {
  // print(DateTime.now());
  // print(DateTime.now().millisecondsSinceEpoch);
  // print(DateTime.now().microsecondsSinceEpoch);
  // print(DateTime.fromMillisecondsSinceEpoch(
  //     DateTime.now().millisecondsSinceEpoch));
  // print(DateTime.fromMillisecondsSinceEpoch(1711372231172));

  for (var i = 0; i < 10; i++) {
    print(DateTime.now().microsecondsSinceEpoch);
  }

  // uuid
  // print(Uuid().v1());
  // print(Uuid().v1());
  // print(Uuid().v4());
  // print(Uuid().v4());
  // print(Uuid().v6());
  // print(Uuid().v6());
  // print(Uuid().v7());
  // print(Uuid().v7());
}
