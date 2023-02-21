import 'dart:async';

void main() {
  int counter = 1;
  final StreamController streamController = StreamController();
  StreamSubscription streamSubscription = streamController.stream.listen(print);

  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (timer.tick > 5) {
      timer.cancel();
      streamController.close();
      streamSubscription.cancel();
    } else {
      streamController.add(counter++);
    }
  });
}
