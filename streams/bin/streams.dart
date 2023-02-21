import 'dart:async';

void main() {
  int counter = 1;
  final StreamController streamController = StreamController<
      int>.broadcast(); //? Broadcast Stream will give listen to multiple Stream Subscriptions on a single StreamController.
  StreamSubscription subscription1 = streamController.stream.listen(print);
  StreamSubscription subscription2 = streamController.stream.listen(print);

  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (timer.tick > 5) {
      timer.cancel();
      streamController.close();
      subscription1.cancel();
      subscription2.cancel();
    } else {
      streamController.add(counter++);
    }
  });
}
