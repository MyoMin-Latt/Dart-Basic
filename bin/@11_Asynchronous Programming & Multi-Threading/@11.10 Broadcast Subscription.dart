// Hot Stream or broadcast subscription

import 'dart:async';
import 'dart:math';

StreamController streamController = StreamController();
StreamSink streamSink = streamController.sink;
void main() async {
  addNum();
  Stream stream = streamController.stream.asBroadcastStream();
  stream.listen((no) {
    print('Listener 1 $no');
  });
  // await Future.delayed(Duration(seconds: 1));
  stream.listen((no) {
    print('Listener 2 $no');
  });
  await Future.delayed(Duration(seconds: 1));
  stream.listen((no) {
    print('Listener 3 $no');
  });
}

void addNum() async {
  for (int i = 1; i < 3; i++) {
    await Future.delayed(Duration(milliseconds: 500));
    streamSink.add(i);
  }
}
